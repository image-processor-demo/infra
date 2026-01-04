data "terraform_remote_state" "global" {
  backend = "s3"

  config = {
    bucket = "terraform-state-bucket-image-processing-demo"
    key    = "infrastructure/live/global/terraform.tfstate"
    region = "eu-west-1"
  }
}
