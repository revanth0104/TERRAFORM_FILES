provider "aws" {
    profile = "default"
    alias = "default"
}

provider "aws" {
    profile = "account1"
    alias = "account1"
    
  
}

resource "aws_s3_bucket" "name" {
    bucket = "mumbai-hyd-bucketprv"
    provider = aws.account1
  
}
resource "aws_s3_bucket" "test" {
    bucket = "us-hyd-bucket-prvu"
  
}