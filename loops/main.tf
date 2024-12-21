variable "subnet_cidr_blocks" {
    description = "List of CIDR blocks for the subnets"
    type = list(string)
    default = ["10.0.0.0/19", "10.0.032.0/19", "10.0.64.0/19"]
}

locals {
    length_of_list = length(var.subnet_cidr_blocks)
    as_a_set = toset(var.subnet_cidr_blocks)
    as_a_map ={
        for idx, value in local.as_a_set:
        idx => value
    }
}

resource "null_resource" "count_example" {
    count = length(var.subnet_cidr_blocks)
    triggers = {
        count_output = var.subnet_cidr_blocks[count.index]
    }
}

resource "null_resource" "for_each_example" {
    for_each = local.as_a_set
    triggers = {
        foreach_output = each.value
    }
}

output "set" {
    value = local.as_a_set
}

output "map" {
    value = local.as_a_map
}

output "length" {
    value = local.length_of_list
}

output "for_each_output" {
    value = null_resource.for_each_example.*
}

output "count_output" {
    value = null_resource.count_example.*.triggers.count_output
}

#using directives

output "directives" {
    value = "%{for index, items in var.subnet_cidr_blocks} ${items} is part of index ${index},\n%{endfor}"
}

# to get values out of a map
variable "subnet_cidr_block_map" {
    description = "map of cidrs"
    type = map(string)
    default = {
        "subnet1" = "10.0.0.1/19"
        "subnet2" = "10.0.0.2/19"
        "subnet3" = "10.0.0.3/19"
    }
}

resource "null_resource" "map_extract" {
    for_each = var.subnet_cidr_block_map
    triggers = {
        map_ouput_innit = each.value
    }
}

output "extracted" {
    value = values(null_resource.map_extract)[*].triggers
}

## Use the "for" keyword to loop over list or map and mod them
# like if I want to captitalize the first letter of each element
variable "names" {
    description = "just names"
    type = map(string)
    default = {
        shryeas = "main of the hour"
        obiwan  = "jedi master"
        quigon  = "jedi master as well"
        anakin  = "not a jedi master, but on the council"
    }
}

output "using_for1" {
    value = [ #this creates a list
        for key, value in var.names:
            "${title(key)} is ${title(value)}"
    ]
}

output "using_for2" { #this creates a map
    value = {
        for key, value in var.names:
            title(key) => title(value)
    }
}
