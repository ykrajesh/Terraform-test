data "azurerm_resource_group" "rg" {
  name = "learn-bf57c589-6099-44d9-834d-da9eab49f509"
}

data "azurerm_virtual_network" "vnetinfo" {
  name = azurerm_virtual_network.vnet.name
  resource_group_name = data.azurerm_resource_group.rg.name
}