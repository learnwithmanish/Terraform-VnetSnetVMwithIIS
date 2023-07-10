# Create virtual machine
resource "azurerm_windows_virtual_machine" "VM2" {
  name                  = "VM2"
  admin_username        = "vmadmin"
  admin_password        = random_password.password.result
  resource_group_name= azurerm_resource_group.RG1.name
  location = azurerm_resource_group.RG1.location
  network_interface_ids = [azurerm_network_interface.VM2-NIC.id]
  size                  = "Standard_DS1_v2"

  os_disk {
    name                 = "VM2OsDisk"
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2022-datacenter-azure-edition"
    version   = "latest"
  }
 
}