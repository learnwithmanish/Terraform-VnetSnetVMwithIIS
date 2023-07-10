resource "azurerm_resource_group" "RG1" {
  
  name = var.ResourceGroupName
  location = var.ResourceGroupLocation
}