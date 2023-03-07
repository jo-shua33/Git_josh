provider "aws" {
  region = "eu-central-1"
}

terraform{
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "-> 4.0"
      }
    }
}

resource "aws_vpc" "workshop" {
  cidr_block = "10.10.0.0/16"
tags = {
  name = "workshop_original"
}
}

resource "aws_subnet" "workshop1" {
  availability_zone = "eu-central-la"
}