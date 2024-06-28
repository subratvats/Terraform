# this shows how to use provider , version constraints
terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      # version = "2.5.0"
      # version = "!= 2.0.0"
      # version = "> 2.0.0"
      # version = "> 2.0.0, <2.0.5, != 1.0.4"
      version = "~> 2.0.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}