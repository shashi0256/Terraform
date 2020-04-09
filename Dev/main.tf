provider "aws" {
  region = "us-east-2"
}
module "my_ec2" {
  source        = "../modules/ec2"
  ec2_count     = 1
  ami_id        = "ami-0fc20dd1da406780b"
  instance_type = "t2.micro"
  subnet_id     = "subnet-207a9e4b"
  key_name       = "Shashi-windows"
  security_groups = ["sg-0724f43cff0976d20"]
  tags            = "Dev"
}
