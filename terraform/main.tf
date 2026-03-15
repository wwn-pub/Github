module "eks" {
  source                   = "terraform-aws-modules/eks/aws"
  version                  = "21.15.1"
  name                     = "my-eks-cluster"
  vpc_id                   = module.vpc.vpc_id
  control_plane_subnet_ids = module.vpc.public_subnets
  subnet_ids               = module.vpc.private_subnets
  endpoint_public_access = true

  enable_cluster_creator_admin_permissions = true

  compute_config = {
    enabled    = true
    node_pools = ["general-purpose"]
  }

  tags = {
    Environment = "dev"
    Terraform   = "true"
  }
}

module "vpc" {
  source          = "terraform-aws-modules/vpc/aws"
  version         = "6.6.0"
  private_subnets = ["10.0.0.0/24", "10.0.1.0/24"]
  azs             = ["eu-central-1a", "eu-central-1b"]
}


    
