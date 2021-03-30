output "id" {
  value = data.azurerm_resource_group.rg.id
}
output "location" {
  value = data.azurerm_resource_group.rg.location
}


output "virtual_network_id" {
  value = data.azurerm_virtual_network.vnet.id
}