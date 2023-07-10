resource "azurerm_subnet" "Snet1" {
  resource_group_name = azurerm_resource_group.RG1.name
  name = var.Subnet1
  virtual_network_name = azurerm_virtual_network.Vnet1.name
  address_prefixes = [ "10.1.1.0/24" ]

}

resource "azurerm_network_security_group" "Snet1-NSG" {
    name = "Snet1-NSG"
    resource_group_name = azurerm_resource_group.RG1.name
    location = azurerm_resource_group.RG1.location  
  security_rule {
    name                       = "Allow-RDP"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "Allow-Web"
    priority                   = 110
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  
}

resource "azurerm_subnet_network_security_group_association" "Snet1-NSG-associate" {
  depends_on = [ azurerm_network_security_group.Snet1-NSG]  
  subnet_id                 = azurerm_subnet.Snet1.id
  network_security_group_id = azurerm_network_security_group.Snet1-NSG.id
}



