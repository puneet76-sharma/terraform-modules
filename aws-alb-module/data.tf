######################################################
## Data to fetch VPC details
######################################################

data "aws_vpc" "vpc_selected" {
  filter {
    name   = "tag:Name"
    values = ["puneet_vpc"]
  }
}

###################################################################
## Data to be fetched for subnets
##################################################################
data "aws_subnets" "private1" {
  # vpc_id = data.aws_vpc.vpc_selected.id
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.vpc_selected.id]
  }
  filter {
    name   = "tag:Name"
    values = ["puneet_public_subnet_az_1*"]
  }
}

# data "aws_subnet" "private" {
#   for_each = data.aws_subnets.private1.ids
#   id       = each.value
# }

data "aws_security_groups" "sg" {
  tags = {
    Name = "puneet_security_group"
  }
}