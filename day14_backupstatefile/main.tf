resource "aws_instance" "test1" {
    ami = "ami-02b49a24cfb95941c"
    instance_type = "t2.micro"
    availability_zone = "ap-south-1a"
    key_name = "projectkey"
}