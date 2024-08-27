provider "aws" {
    region = "ap-south-1"
  
}

resource "aws_instance" "mydb" {
    ami = "ami-02b49a24cfb95941c"
    instance_type = "t2.micro"
    availability_zone = "ap-south-1a"
    key_name = "projectkey"
    
  tags = {
    Name = "dev_1"
  }
  
}