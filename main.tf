provider "azurerm" {
  features {
    
  }
}

variable "ipname" {
  description = "Enter name for Public ip "
}

resource "azurerm_public_ip" "myname" {
   name                = var.ipname
  resource_group_name = "linuxrg"
  location            = "East US"
  allocation_method   = "Static"
  tags = {
    environment = "Production"
  }
}