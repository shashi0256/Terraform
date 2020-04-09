provider "aws" {
  region = "us-east-2"
}
module "my_ec2" {
  source        = "../modules/ec2"
  ec2_count     = 1
  ami_id        = "ami-0fc20dd1da406780b"
  instance_type = "t2.micro"
  subnet_id     = "subnet-53ad281f"
  key_name       = "Shashi-windows"
  security_groups = ["sg-0cc04d9f8e260373a"]
  tags            = "PROD"
}

