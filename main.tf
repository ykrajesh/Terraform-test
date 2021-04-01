provider "azurerm" {
  features {}
}
# create virtual network 
resource "azurerm_virtual_network" "vnet" {
  name                = "${var.Virtual_Machine_name[1]}-Vnet"
  address_space       = ["10.0.0.0/16"]
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
}
# create subnet in vnet
resource "azurerm_subnet" "subnet" {
  name                 = "${var.Virtual_Machine_name[1]}-Subnet"
  resource_group_name  = data.azurerm_resource_group.rg.name
  virtual_network_name = data.azurerm_virtual_network.vnetinfo.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_virtual_network" "vnet1" {
  name                = "${var.Virtual_Machine_name[0]}-Vnet"
  address_space       = ["10.0.0.0/16"]
  location = "eastus"
  #location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
}
