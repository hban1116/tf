module "vpc" {
  source = "../../modules/vpc"

  name               = "corp-dev"
  vpc_cidr           = "10.0.0.0/16"
  azs                = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
  single_nat_gateway = true
  tags = {
    Environment = "dev"
    Project     = "corporate-infra"
    ManagedBy   = "Terraform"
  }
}
