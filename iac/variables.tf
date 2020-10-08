


variable "common_tags" {
    type = map
    default={
        "createdby"= "Terraform"
    }
}

variable "min_size" {
  type = number
  default=2
}

variable "max_size" {
  type = number
  default=2
}
