variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
}

variable "lab25_subnet_cidr" {
  description = "The CIDR block for the public subnet"
}

variable "lab25p_subnets" {
  description = "The CIDR blocks for the private subnets"
  type        = list(string)
}

variable "azs" {
  description = "List of Availability Zones"
  type        = list(string)
}