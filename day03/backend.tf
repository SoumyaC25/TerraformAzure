terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rsg"
    storage_account_name = "day02stgacc"
    container_name       = "tfstate_log"
    key                  = "dev.terraform.tfstate"
  }
}
