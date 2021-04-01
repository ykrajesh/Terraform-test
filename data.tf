data "azurerm_resource_group" "rg" {
  name = "learn-5213847c-a9af-4e83-847f-d9710a97e883"
}

data "azurerm_virtual_network" "vnetinfo" {
  name = azurerm_virtual_network.vnet.name
  resource_group_name = data.azurerm_resource_group.rg.name
}