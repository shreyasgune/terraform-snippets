provider "aws" {
    region = "us-east-1"
}


# using COUNT as an example of looping
variable "subnet_cidr_blocks" {
    description = "List of CIDR blocks for the subnets"
    type = list(string)
    default = ["10.0.0.0/19", "10.0.032.0/19", "10.0.64.0/19"]
}

module "subnet" {
    source = "./modules/subnet"

    count = length(var.subnet_cidr_blocks)
    vpc_id = aws_vpc.main.id
    subnet_cidr_block = var.subnet_cidr_blocks[count.index]
}

output "all_ids" {
    value = module.subnet[*].subnet_id
}

# Limitations
# you can use count to loop over the entire resource, but can't
# iterate over the internal attribute within the resource

# also, can't edit the list you're using count over. It will mess with the indexing and move positions, destroying old stuff.


## USING FOR_EACH as an example of looping
# note, for_each supports sets and maps only, not lists.

resource "subnet_cidr_blocks_foreach" {
    
    for_each = toset(var.subnet_cidr_blocks)
    vpc_id = aws_vpc_main.id
    cidr_block = each.value
    availability_zone = var.availability_zone
}