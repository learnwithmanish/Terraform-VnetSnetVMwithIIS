resource "azurerm_virtual_network" "Vnet1" {
  resource_group_name = azurerm_resource_group.RG1.name
  location = azurerm_resource_group.RG1.location
  name = var.VirtualNetworkName
  address_space = [ "10.1.0.0/16" ]
}