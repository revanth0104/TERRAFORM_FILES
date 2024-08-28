provider "aws" {
    region = "ap-south-1"
  
}


resource "aws_instance" "name" {
    ami = "ami-02b49a24cfb95941c"
    instance_type = "t2.micro"
    key_name = "projectkey"
    
    tags = {
    Name ="traget1"
    }
}
   resource "aws_s3_bucket" "name" {
    bucket = "hemanthstar"
    depends_on = [ aws_instance.name ]
     
   }