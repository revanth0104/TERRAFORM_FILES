terraform {
  backend "s3" {
    bucket = "awsterraformday4"
    key    = "aws/terraform.tfstate"
    region = "ap-south-1"
  }
}