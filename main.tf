provider "aviatrix" {
  controller_ip = "3.217.242.214"
  username = "admin"
  password = var.password
  }
  
resource "aviatrix_vpc" "default" {
  cloud_type           = 1
  name                 = "vpc-transit-${var.region}"
  region               = var.region
  cidr                 = var.cidr
  account_name         = var.aws_account_name
  aviatrix_firenet_vpc = false
  aviatrix_transit_vpc = true
}
