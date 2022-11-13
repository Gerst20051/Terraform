resource "aws_internet_gateway" "igw_9a038fff" {
  vpc_id = aws_vpc.vpc_bae2a0df.id
}

resource "aws_route_table" "rtb_b5712dd0" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw_9a038fff.id
  }

  vpc_id = aws_vpc.vpc_bae2a0df.id
}

resource "aws_security_group" "sg_2d9c1c49" {
  description = "default VPC security group"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    from_port = 0
    protocol  = "-1"
    self      = true
    to_port   = 0
  }

  name   = aws_vpc.vpc_bae2a0df.instance_tenancy
  vpc_id = "vpc-bae2a0df"
}

resource "aws_subnet" "subnet_0119790d" {
  availability_zone                   = "us-east-1f"
  cidr_block                          = "172.31.80.0/20"
  map_public_ip_on_launch             = true
  private_dns_hostname_type_on_launch = "ip-name"
  vpc_id                              = aws_vpc.vpc_bae2a0df.id
}

resource "aws_subnet" "subnet_0decae37" {
  availability_zone                   = "us-east-1e"
  cidr_block                          = "172.31.0.0/20"
  map_public_ip_on_launch             = true
  private_dns_hostname_type_on_launch = "ip-name"
  vpc_id                              = aws_vpc.vpc_bae2a0df.id
}

resource "aws_subnet" "subnet_2faeda4a" {
  availability_zone                   = "us-east-1d"
  cidr_block                          = "172.31.64.0/20"
  map_public_ip_on_launch             = true
  private_dns_hostname_type_on_launch = "ip-name"
  vpc_id                              = aws_vpc.vpc_bae2a0df.id
}

resource "aws_subnet" "subnet_5b4cf502" {
  availability_zone                   = "us-east-1c"
  cidr_block                          = "172.31.16.0/20"
  map_public_ip_on_launch             = true
  private_dns_hostname_type_on_launch = "ip-name"
  vpc_id                              = aws_vpc.vpc_bae2a0df.id
}

resource "aws_subnet" "subnet_ae7ddb85" {
  availability_zone_id                = "use1-az2"
  cidr_block                          = "172.31.48.0/20"
  map_public_ip_on_launch             = true
  private_dns_hostname_type_on_launch = "ip-name"
  vpc_id                              = aws_vpc.vpc_bae2a0df.id
}

resource "aws_subnet" "subnet_f3be2684" {
  availability_zone_id                = "use1-az4"
  cidr_block                          = "172.31.32.0/20"
  map_public_ip_on_launch             = true
  private_dns_hostname_type_on_launch = "ip-name"
  vpc_id                              = aws_vpc.vpc_bae2a0df.id
}

resource "aws_vpc" "vpc_bae2a0df" {
  cidr_block           = "172.31.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"
}

