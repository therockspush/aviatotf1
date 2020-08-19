provider "aviatrix" {
  controller_ip = "3.217.242.214"
  username = "admin"
  password = "var.password"
  }
  
resource "aviatrix_account" "temp_acc_awsgov" {
  account_name          = "username"
  cloud_type            = 256
  awsgov_account_number = "123456789012"
  awsgov_access_key     = "ABCDEFGHIJKL"
  awsgov_secret_key     = "ABCDEFGHIJKLabcdefghijkl"
}
