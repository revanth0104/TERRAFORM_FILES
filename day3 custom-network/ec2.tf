resource "aws_instance" "name" {
    ami = "ami-02b49a24cfb95941c"
    instance_type = "t2.micro"
    key_name = "projectkey"
    subnet_id = aws_subnet.public.id
    vpc_security_group_ids = [aws_security_group.secure.id]
    tags = {
        Name = "today_instance"
    }
  
}