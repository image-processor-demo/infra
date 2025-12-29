

# Enable Terraform core rules
plugin "terraform" {
  enabled = true
  preset  = "recommended"
}

# Optional: AWS rules (safe defaults)
plugin "aws" {
  enabled = true
  version = ">= 0.30.0"
  source  = "github.com/terraform-linters/tflint-ruleset-aws"
}

# Global config
config {
  # Do not fail on warnings (CI-friendly)
  force = false

  # Display issues even if files are excluded
  disabled_by_default = false
}
