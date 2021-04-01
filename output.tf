output "id" {
  value = data.azurerm_resource_group.rg.id
}
output "location" {
  value = data.azurerm_resource_group.rg.location
}

# get virtual network info 
output "Virual-Network-ID" {
  value = data.azurerm_virtual_network.vnetinfo.id
 
}
output "Virual-Network-Name" {
  
  value = data.azurerm_virtual_network.vnetinfo.name
}