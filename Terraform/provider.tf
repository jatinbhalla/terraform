terraform {
 required_providers {
   azuread = {
     source  = "hashicorp/azuread"
     version = "~> 2.15.0"
   }
   azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.90.0"
    }  
 }
 required_version = "1.6.1"
     backend "azurerm" {
       access_key           = "Y2PjWmCaH098pa0LNWmrA6aac27ZzHMakg/aF+3ja2y6+y9PRDEQkaPQKYGu7qMmtBbB1B0y6VVv+ASt3dQ0hw=="
       container_name       = "terraform"
       key                  = "terraform.tfstate"
       resource_group_name  = "jenkins-get-started-rg"
       storage_account_name = "jatinyes"
    }
}
provider "azurerm"  {
      features {}
    }
