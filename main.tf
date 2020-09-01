provider "aviatrix" {
  controller_ip = "3.217.242.214"
  username = "admin"
  password = var.password
  }
  
/*
resource "aviatrix_vpc" "default" {
  cloud_type           = 1
  name                 = "vpc-transit-${var.region}"
  region               = var.region
  cidr                 = var.cidr
  account_name         = var.aws_account_name
  aviatrix_firenet_vpc = false
  aviatrix_transit_vpc = true
}
*/
  
resource "aviatrix_spoke_gateway" "test_spoke" {
  cloud_type         = 1
  account_name       = "flottAWS"
  gw_name            = "awsspokegw"
  vpc_id             = "vpc-00850a5e2a242fbce"
  vpc_reg            = "us-west-2"
  gw_size            = "t2.micro"
  subnet             = "10.10.59.112/28"
  enable_active_mesh = true
  }
