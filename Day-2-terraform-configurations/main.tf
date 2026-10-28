# Create the VPC
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  
  tags = {
    Name = var.vpc_name
  }
}

# Create the Dev Subnet
resource "aws_subnet" "dev" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.dev_subnet_cidr
  
  tags = {
    Name = "${var.vpc_name}-dev-subnet"
  }
}

# Create the Test Subnet
resource "aws_subnet" "test" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.test_subnet_cidr
  
  tags = {
    Name = "${var.vpc_name}-test-subnet"
  }
}