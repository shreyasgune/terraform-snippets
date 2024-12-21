variable "vpc_id" {
    description = "VPC ID"
    type = string
}

variable "subnet_cidr_block" {
    description = "cidr block for the subnet"
    type = string
}

variable "availability_zone" {
    description = "availability zone"
    type = string
}
