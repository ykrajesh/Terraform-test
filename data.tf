data "azurerm_resource_group" "rg" {
  name = "learn-9a8d7b9d-17e5-41a6-8d0f-892f53f9cd16"
}
data "azurerm_virtual_network" "vnet" {
  name                = azurerm_virtual_network.rg.name
  resource_group_name = data.azurerm_resource_group.rg.name
}