data "aws_vpc" "vpc_available" {
  filter {
    name   = "tag:Name"
    values = ["puneet_vpc"]
  }
}
data "aws_subnets" "example" {
  # vpc_id = data.aws_vpc.vpc_available.id
    filter {
    name   = "vpc-id"
    values = [data.aws_vpc.vpc_available.id]
  }
}

# data "aws_subnet" "example" {
#   for_each = data.aws_subnets.example.ids
#   id       = each.value
# }

data "aws_security_group" "puneet_sg" {
  filter {
    name   = "tag:Name"
    values = ["puneet_security_group"]
  }
}