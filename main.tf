terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.61.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
}

resource "aws_vpc" "myvpc" {
  cidr_block = var.vpc-cdir
  tags = {
    Name = "${var.env}-vpc"
  }
}
resource "aws_subnet" "my-pubsubnet1" {
  cidr_block        = var.subnet-cdir[0]
  availability_zone = var.azs[0]
  vpc_id            = aws_vpc.myvpc.id
  tags = {
    Name = "${var.env}-pub-subnet1"
  }
}
resource "aws_subnet" "my-privsubnet1" {
  cidr_block        = var.subnet-cdir[1]
  availability_zone = var.azs[1]
  vpc_id            = aws_vpc.myvpc.id
  tags = {
    Name = "${var.env}-priv-subnet1"
  }
}

resource "aws_subnet" "my-privsubnet2" {
  cidr_block        = var.subnet-cdir[2]
  availability_zone = var.azs[2]
  vpc_id            = aws_vpc.myvpc.id
  tags = {
    Name = "${var.env}-priv-subnet2"
  }
}
