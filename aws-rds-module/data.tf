data "aws_vpc" "vpc_available" {
  filter {
    name   = "tag:Name"
    values = ["puneet_vpc"]
  }
}

data "aws_subnets" "available_db_subnet" {
  # vpc-id = data.aws_vpc.vpc_available.id
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.vpc_available.id]
  }

  filter {
    name   = "tag:Name"
    values = ["puneet_database_subnet_az_1*"]
  }
}

data "aws_availability_zones" "available" {
  state = "available"
}
data "aws_security_group" "puneet_sg" {
  filter {
    name   = "tag:Name"
    values = ["puneet_security_group"]
  }
}