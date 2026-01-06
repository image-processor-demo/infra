module "backend" {
  source                = "git::https://github.com/image-processor-demo/modules.git//backend?ref=v0.3.11"
  environment           = var.environment
  aws_region            = var.aws_region
  artifacts_bucket_name = data.terraform_remote_state.global.outputs.artifacts_bucket_name
  artifact_key = yamldecode(
    file("${path.module}/versions.yml")
  ).backend.lambda.process
  api_shared_secret = var.api_shared_secret
}

module "frontend" {
  source                  = "git::https://github.com/image-processor-demo/modules.git//frontend?ref=v0.3.11"
  environment             = var.environment
  api_shared_secret       = var.api_shared_secret
  api_gateway_domain_name = module.backend.api_gateway_domain_name
  api_gateway_stage_name  = module.backend.api_gateway_stage_name
}
