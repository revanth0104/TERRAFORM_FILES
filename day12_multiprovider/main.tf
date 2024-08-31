provider "aws" {
    region = "us-east-1"
  
}

provider "aws" {
    region = "ap-south-1"
    alias = "east"
  
}
resource "aws_s3_bucket" "ea" {
    bucket = "pvrustar"
    provider = aws.east
  
}

resource "aws_s3_bucket" "mumbai" {
    bucket = "rainingstar"
  
}