variable "ami" {
  description = "The AMI ID  to use for this instance."
  type        = string
  default     = "ami-008fe2fc65df48dac"
}

# variable "instance_type" {
#   description = "The  AWS Instance Type we want to launch."
#   type        = string
#   default     = "t2.micro"
# }

variable "instance_type" {
  type  = map
  default = {
    "prod" = "t3.large"
    "dev" = "t2.micro"
  }
}

variable "name" {
  description = "This prefix will be added to the name of almost every resource created."
  type        = string
  default     = "jomacs"
}

variable "vpc_cidr" {
  description = "The VPC CIDR  range to use for the virtual network."
  type        = string
  default     = "10.0.0.0/16"
}

variable "private_subnet_cidr" {
  description = "The CIDR range to  use for private subnet."
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_cidr" {
  description = "The CIDR range to  use for public subnet."
  type        = string
  default     = "10.0.2.0/24"
}

variable "servers" {
  default = ["dev", "prod", "staging"]
  type = list 
}
