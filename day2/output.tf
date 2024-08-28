output "publicip" {
    value = aws_instance.name.public_ip
    description = "printing the public ip"
  
  
}
output "privateip" {
    value = aws_instance.name.private_ip
    sensitive = true
  
}