variable "password" {
   description = "password"
   type = string
   }

variable "region" {
    description = "The AWS region to deploy this module in"
    type = string
}

variable "cidr" {
    description = "The CIDR range to be used for the VPC"
    type = string
}

variable "aws_account_name" {
    description = "The AWS account name, as known by the Aviatrix controller"
    type = string
}
