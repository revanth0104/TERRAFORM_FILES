provider "aws" {
    region = "ap-south-1"
  
}

data "aws_subnet" "sub_pvt_1a" {
  filter {
    name   = "tag:Name"
    values = ["public"]
  }
}

resource "aws_instance" "name" {
    ami = "ami-02b49a24cfb95941c"
    instance_type = "t2.micro"
    key_name = "projectkey"
    subnet_id = data.aws_subnet.sub_pvt_1a.id
    tags = {
    Name ="traget1"
    }
}
