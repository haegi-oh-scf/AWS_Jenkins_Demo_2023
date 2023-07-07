provider "aws" {
  region = var.aws_region
}

# resource "aws_vpc" "main" {
#   cidr_block = "172.16.0.0/16"
#   instance_tenancy = "default"
#   tags = {
#     Name = "main"
#   }
# }
