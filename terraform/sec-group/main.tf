provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_default_vpc" "this" {}

resource "aws_security_group" "this" {
  name        = "sg-allow-tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_default_vpc.this.id

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [aws_default_vpc.this.cidr_block]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "terraform"
    Environment = "experiment"
  }
}
