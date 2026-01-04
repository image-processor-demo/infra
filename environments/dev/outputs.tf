output "api_base_url" {
  description = "Base URL used by frontend to access backend API via CloudFront"
  value       = "https://${module.frontend.cloudfront_domain_name}/api"
}

output "frontend_bucket_name" {
  description = "S3 bucket hosting frontend assets for dev"
  value       = module.frontend.frontend_bucket_name
}

output "cloudfront_distribution_id" {
  description = "CloudFront distribution ID for dev frontend"
  value       = module.frontend.cloudfront_distribution_id
}

output "artifacts_bucket_name" {
  description = "Global S3 bucket used for Lambda artifacts"
  value       = data.terraform_remote_state.global.outputs.artifacts_bucket_name
}
