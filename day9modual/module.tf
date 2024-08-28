module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"
  ami = "ami-02b49a24cfb95941c"
  instance_type          = "t2.micro"
  key_name               = "projectkey"
  monitoring             = true
  subnet_id              = "subnet-048944d4db7d380e5"

 
}