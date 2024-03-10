resource "aws_instance" "web" {
  ami = var.ami 
  instance_type = var.instance_type["prod"]
  subnet_id = aws_subnet.private.id
  depends_on = [aws_subnet.private]
  tags = {
    Name = "${var.name}-${var.servers[1]}-johnson"
  }
}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = local.resource_name
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_cidr
  tags = {
    Name = "${local.resource_name}-private-subnet"
  }
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_cidr
  tags = {
    Name = "${local.resource_name}-public-subnet"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "${var.name}-outputs-tf-test-bucket-abbels999"

  tags = {
    Name = "${var.name}-variables-demo-s3"
  }
}

########################################