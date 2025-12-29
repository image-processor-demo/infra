variable "environment" {
  description = "The deployment environment (e.g., dev, staging, prod)"
  type        = string
  default     = "global"
}

variable "allowed_repos_branches" {
  description = "List of GitHub repositories and branches allowed to assume the IAM role"
  type = list(object({
    org    = string
    repo   = string
    branch = string
  }))
  default = [
    {
      org    = "image-processor-demo"
      repo   = "infra"
      branch = "main"
    },
    {
      org    = "image-processor-demo"
      repo   = "app"
      branch = "main"
    }
  ]
}
