variable "enable_me" {
    description = "do I enable myself"
    type = bool
    default = true 
}

resource "null_resource" "enabled_example" {
    count = var.enable_me ? 1 : 0 # simulates if
    triggers = {
        conditional_output = "I am enabled"
    }
}

resource "null_resource" "disabled_example" {
    count = var.enable_me ? 0 : 1 #simulates else
    triggers = {
        conditional_output = "I am disabled"
    }
}

output "enabled_output" {
    value = null_resource.enabled_example.*.triggers.conditional_output
}

output "enabledORdisabled" {
    value = one(concat(
        null_resource.enabled_example.*.triggers.conditional_output,
        null_resource.disabled_example.*.triggers.conditional_output
    ))
}