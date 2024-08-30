resource "aws_instance" "terra" {
    ami = "ami-02b49a24cfb95941c"
    instance_type = "t2.micro"
    availability_zone = "ap-south-1a"
    key_name = "projectkey"
    count = length(var.test) #it will print 3
    
  tags = {
    #Name = "dev-1"
    #Name = "web-${count.index}"
    Name= var.test[count.index]
  }
}

variable "test" {
    type = list(string)
    default = ["pvt","pub"]
  
}