terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
   backend "azurerm" {
    resource_group_name  = "rg-tfstateMano"          
    storage_account_name = "stgtfmano"        
   container_name       = "tfstate"                    
    key                  = "prod.terraform.tfstate"             
  }
}

provider "azurerm" {
  features {}
  subscription_id = "972b29e5-b4b2-4f43-b814-02879737840d"
}
