variable "ami_id" {
  type=string
  default="ami-0014b4f265307008c"
}

variable "vpc_id" {
    type = string
    default="vpc-7832e011"
}

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
