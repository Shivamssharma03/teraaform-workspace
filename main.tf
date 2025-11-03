locals {
  env = terraform.workspace
}

module "ec2" {
  source = "./modules/ec2"
  project = var.project
  env     = local.env
  ami = var.ami
  instance_type = var.instance_type
  subnet_ids = module.vpc.public_subnet_ids
  key_name   = var.key_name
  public_key = var.public_key
  tags = merge(var.tags, { Environment = local.env })
}


module "s3" {
  source  = "./modules/s3"
  project = var.project
  env     = local.env
  bucket_name = "${var.project}-${local.env}-assets"
  tags = merge(var.tags, { Environment = local.env })
}


module "vpc" {
  source = "./modules/vpc"
  project = var.project
  env     = local.env
  cidr_block = "10.0.0.0/16"

  public_subnets = {
    "${var.aws_region}a" = "10.0.1.0/24"
    "${var.aws_region}b" = "10.0.2.0/24"
  }

  tags = merge(var.tags, { Environment = local.env })
}