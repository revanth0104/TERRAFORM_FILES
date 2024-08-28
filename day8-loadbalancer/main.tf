resource "aws_lb" "test" {
  name               = "alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["sg-0cdee684e298bd3fa"]  # Replace with actual security group ID
  subnets            = ["subnet-048944d4db7d380e5","subnet-01edf7212a23ec749"]  # List of subnet IDs


}
