#create of vpc
resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name ="private_vpc"
    }
  
}
#create internet gateway
resource "aws_internet_gateway" "ig" {
    vpc_id = aws_vpc.myvpc.id
    tags = {
      Name = "inter_ig"
    }
  
}
#creating subnet
resource "aws_subnet" "public" {
    vpc_id = aws_vpc.myvpc.id
    availability_zone = "ap-south-1a"
    cidr_block = "10.0.1.0/24"
    tags = {
      Name = "public_subnet"
    }
  
}
resource "aws_subnet" "private" {
    vpc_id = aws_vpc.myvpc.id
    availability_zone = "ap-south-1b"
    cidr_block = "10.0.2.0/24"
    tags = {
      Name = "private_subnet"
    }
  
}
#create route tables
resource "aws_route_table" "route" {
    vpc_id = aws_vpc.myvpc.id
    tags = {
      Name = "public_route"
    }
    route {
        gateway_id = aws_internet_gateway.ig.id
        cidr_block = "0.0.0.0/0"
    }
  
}
#create subnet_assocation for route
resource "aws_route_table_association" "associatiom" {
    route_table_id = aws_route_table.route.id
    subnet_id = aws_subnet.public.id
  
}

#security groups 
resource "aws_security_group" "secure" {
    name = "my_security_group"
    description = "allow"
    vpc_id = aws_vpc.myvpc.id
    tags ={
        Name ="my_security"
    }  
    ingress {
        description = "allow"
        from_port = "22"
        to_port = "22"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        description      = "TLS from VPC"
        from_port        = 22
        to_port          = 22
        protocol         = "TCP"
        cidr_blocks      = ["0.0.0.0/0"]
    }
}

