terraform {
  experiments = [variable_validation]
}

variable "os" {
  default = "linux"
  #default = "macos"

  validation {
    # The condition here identifies if the variable contains the string "linxu" OR "windows".
    condition = can(regex("linux|windows", var.os))
    error_message = "ERROR: Operating System must be Windows OR Linux."
  }
}