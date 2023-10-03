variable "image_flavor" {
  type    = string
  default = "Ubuntu-22.04-202208"
}

variable "compute_flavor" {
  type    = string
  default = "Basic-1-2-20"
}

variable "key_pair_name" {
  type    = string
  default = "keypair-terraform"
}

variable "availability_zone_name" {
  type    = string
  default = "MS1"
}

variable "email" {
  type        = string
  description = "User email."
  sensitive   = true
}

variable "password" {
  type        = string
  description = "User password."
  sensitive   = true
}