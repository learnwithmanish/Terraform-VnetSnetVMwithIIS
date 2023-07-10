resource "azurerm_public_ip" "VM1-PIP" {
    name = "VM1-PIP"
    resource_group_name= azurerm_resource_group.RG1.name
    location = azurerm_resource_group.RG1.location
    allocation_method = "Dynamic"

}

resource "azurerm_public_ip" "VM2-PIP" {
    name = "VM2-PIP"
     resource_group_name= azurerm_resource_group.RG1.name
    location = azurerm_resource_group.RG1.location
    allocation_method = "Dynamic"

}

resource "azurerm_public_ip" "VM3-PIP" {
    name = "VM3-PIP"
    resource_group_name= azurerm_resource_group.RG1.name
    location = azurerm_resource_group.RG1.location
    allocation_method = "Dynamic"

}