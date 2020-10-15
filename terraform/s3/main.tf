provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_s3_bucket" "this" {
  bucket = "my-bucket-forcompliance"

  tags = {
    Name        = "terraform"
    Environment = "experiment"
  }
}
