variable "ami" {
  description = "passing to server"
  type = string
  default = "ami-02b49a24cfb95941c"

}
variable "aws_instance" {
    type = string
    default = "t2.micro"
    
  
}

variable "key_name" {
    type = string
    default = "projectkey"

}
