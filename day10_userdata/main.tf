provider "aws" {
  
}
resource "aws_instance" "test" {
    ami = "ami-02b49a24cfb95941c"
    instance_type = "t2.micro"
    user_data= file("test.sh")
}