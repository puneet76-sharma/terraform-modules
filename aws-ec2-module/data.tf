data "aws_vpc" "vpc_available" {
  filter {
    name   = "tag:Name"
    values = ["puneet_vpc"]
  }
}

data "aws_iam_instance_profile" "instance_profile" {
  name = "EC2CodedeployRole"
}

data "aws_availability_zone" "az" {
  name                   = "us-east-1a"
  all_availability_zones = false
  state                  = "available"
}

data "aws_key_pair" "key" {
  key_name = "demo"
}

data "aws_subnet" "selected" {
  vpc_id            = data.aws_vpc.vpc_available.id
  availability_zone = "us-east-1a"
  filter {
    name   = "tag:Name"
    values = ["puneet_public_subnet_az_1a"]
  }
}

data "aws_security_groups" "sg" {
  tags = {
    Name = "puneet_security_group"
  }
}