resource "azurerm_network_interface" "VM1-NIC" {
  name                = "VM1-nic"
  location            = azurerm_resource_group.RG1.location
  resource_group_name = azurerm_resource_group.RG1.name

  ip_configuration {
    name                          = "VM1-NIC-Config"
    subnet_id                     = azurerm_subnet.Snet1.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.VM1-PIP.id
  }
}


resource "azurerm_network_interface" "VM2-NIC" {
  name                = "VM2-nic"
  location            = azurerm_resource_group.RG1.location
  resource_group_name = azurerm_resource_group.RG1.name

  ip_configuration {
    name                          = "VM3-NIC-Config"
    subnet_id                     = azurerm_subnet.Snet2.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.VM2-PIP.id
  }
}


resource "azurerm_network_interface" "VM3-NIC" {
  name                = "VM3-nic"
  location            = azurerm_resource_group.RG1.location
  resource_group_name = azurerm_resource_group.RG1.name

  ip_configuration {
    name                          = "VM3-NIC-Config"
    subnet_id                     = azurerm_subnet.Snet3.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.VM3-PIP.id
  }
}