terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "2.12.1"
    }
  }
  required_version = ">= 1.2.0"
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.2.1"
  vpc_id  = var.vpc_id
}
provider "aws" {
  region = "us-east-1"
}
provider "helm" {
  kubernetes {
    host                   = module.eks.cluster_endpoint
    cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
    
  }
}
resource "aws_instance" "app_server" {
  ami = "ami-0453ec754f44f9a4a"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-ec2-instance"
  }
  
}