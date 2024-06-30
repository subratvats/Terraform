# this shows how to use provider , version constraints
terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      # version = "2.5.0"
      # version = "!= 2.0.0"
      # version = "> 2.0.0"
      # version = "> 2.0.0, <2.0.5, != 1.0.4"
      version = "~> 2.0.0" #it will download 2.0.0 to 2.0.9 what ever higher available
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}