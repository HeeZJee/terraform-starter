variable "aws_access_key" {
  type = string
  description = "AWS IAM User Access key"
  sensitive = true
}

variable "aws_secret_key" {
  type = string
  description = "AWS IAM User Secret key"
  sensitive = true
}


variable "aws_region" {
  type = string
  description = "AWS Region for resources"
  sensitive = false
}

variable "enable_dns_hostnames" {
    type = bool
    description = "Enable DNS hostnames for VPC"    
    default = true
}

variable "vpc_cidr_block" {
  type = string
  description = "Base CIDR Block for VPC"
  default = "10.0.0.0/16"
}

variable "vpc_subnet1_cidr_block" {
  type = string
  description = "CIDR Block for subnet 1 in VPC"
  default = "10.0.0.0/24"
}

variable "map_public_ip_on_launch" {
  type = bool
  description = "Map public IP to subnet Instance"
  default = true
}

variable "instance_type" {
  type = string
  description = "Type for EC2 Isntance"
  default = "t2.micro"
}
