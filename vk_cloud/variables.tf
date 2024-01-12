variable "image_flavor" {
  type = string
  default = "Ubuntu-22.04-202208"
}

variable "compute_flavor" {
  type = string
  default = "STD2-2-4"
}

variable "key_pair_name" {
  type = string
  default = "lab4"
}

variable "availability_zone_name" {
  type = string
  default = "MS1"
}
