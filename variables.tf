variable "env" {
  description = "environment type"
  type        = string
  default     = "Dev"
}

variable "vpc-cdir" {
  description = "vpc cidr block"
  type        = string
  default     = "172.16.0.0/16"
}
variable "subnet-cdir" {
  description = "cidr blocks for subnets"
  type        = list(string)
  default     = ["172.16.0.0/24", "172.16.1.0/24", "172.16.2.0/24"]
}
variable "azs" {
  description = "available AZs"
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
}