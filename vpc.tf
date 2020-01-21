module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.23.0"
  # insert the 8 required variables here
resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "dedicated"
  tags = {
    Name = "main"
  }
}
