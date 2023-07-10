# Install IIS web server to the virtual machine
resource "azurerm_virtual_machine_extension" "Vm1-IIS-Install" {
  name                       = "VM1-IIS"
  virtual_machine_id         = azurerm_windows_virtual_machine.VM1.id
  publisher                  = "Microsoft.Compute"
  type                       = "CustomScriptExtension"
  type_handler_version       = "1.8"
  auto_upgrade_minor_version = true

  settings = <<SETTINGS
    {
      "commandToExecute": "powershell -ExecutionPolicy Unrestricted Install-WindowsFeature -Name Web-Server -IncludeAllSubFeature -IncludeManagementTools"
    }
  SETTINGS
}

resource "azurerm_virtual_machine_extension" "Vm2-IIS-Install" {
  name                       = "VM2-IIS"
  virtual_machine_id         = azurerm_windows_virtual_machine.VM2.id
  publisher                  = "Microsoft.Compute"
  type                       = "CustomScriptExtension"
  type_handler_version       = "1.8"
  auto_upgrade_minor_version = true

  settings = <<SETTINGS
    {
      "commandToExecute": "powershell -ExecutionPolicy Unrestricted Install-WindowsFeature -Name Web-Server -IncludeAllSubFeature -IncludeManagementTools"
    }
  SETTINGS
}