terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.42.0"
    }
  }
  #    backend "azurerm" {
 #     resource_group_name  = "rgfortfstatemano"          # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
 #     storage_account_name = "stgtfstatemano"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
  #    container_name       = "tfstate"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
 #     key                  = "prod.terraform.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
 #   }
}

provider "azurerm" {
  features {}
  subscription_id = "972b29e5-b4b2-4f43-b814-02879737840d"
}
