variable "ami_id" {
  type    = string
  default = "ami-0c02fb55956c7d316"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "associate_public_ip" {
  type    = bool
  default = true
}

variable "az" {
  type    = string
  default = "us-east-1a"
}

variable "disable_api_termination" {
  type    = bool
  default = false
}

variable "instance_profile" {
  type    = string
  default = "ec2"
}

variable "volume_size" {
  type    = number
  default = 10
}

variable "application" {
  type    = string
  default = "puneet"
}

variable "organization" {
  type    = string
  default = "puneetrock"
}