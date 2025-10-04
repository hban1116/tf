module "vpc" {
  source = "../../modules/vpc"

  name               = "corp-dev"
  vpc_cidr           = "10.0.0.0/16"
  azs                = ["us-east-1a", "us-east-1b", "us-east-1c"]
  single_nat_gateway = true
  tags = {
    Environment = "dev"
    Project     = "corporate-infra"
    ManagedBy   = "Terraform"
  }
}
