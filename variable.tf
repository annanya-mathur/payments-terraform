variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "ap-southeast-2"
  
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "192.168.0.0/23"
}

variable "project_name" {
  description = "The name of the project"
  type        = string
  default     = "payments"
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
  default     = "192.168.0.0/25"
}

variable "az_2a" {
  description = "The availability zone for the public subnet"
  type        = string
  default     = "ap-southeast-2a"
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  type        = string
  default     = "192.168.0.128/25"
}

variable "az_2b" {
  description = "The availability zone for the private subnet"
  type        = string
  default     = "ap-southeast-2b"
}
