terraform {
  backend "s3" {
    bucket = "awsterraformdayyy4"
    key    = "aws/terraform.tfstate"
    region = "ap-south-1"
  }
}