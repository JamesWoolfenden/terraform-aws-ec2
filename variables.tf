variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

variable "user_data" {
  default = ""
}

variable "instance_type" {
  default = "t3.micro"
}
