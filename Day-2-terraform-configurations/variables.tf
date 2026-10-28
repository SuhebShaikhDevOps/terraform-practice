variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "The Name tag for the VPC"
  type        = string
  default     = "my-vpc"
}

variable "dev_subnet_cidr" {
  description = "The CIDR block for the dev subnet"
  type        = string
  default     = "10.0.0.0/24"
}

variable "test_subnet_cidr" {
  description = "The CIDR block for the test subnet"
  type        = string
  default     = "10.0.1.0/24"
}