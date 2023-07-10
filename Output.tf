output "VM1-PUBLIC-IP" {
  value = azurerm_windows_virtual_machine.VM1.public_ip_address
}

output "VM2-PUBLIC-IP" {
  value = azurerm_windows_virtual_machine.VM2.public_ip_address
}

output "VM3-PUBLIC-IP" {
  value = azurerm_windows_virtual_machine.VM3.public_ip_address
}

output "VM1-admin_password" {
 sensitive = true
  value     = azurerm_windows_virtual_machine.VM1.admin_password
}

output "VM2-admin_password" {
  sensitive = true
  value     = azurerm_windows_virtual_machine.VM2.admin_password
}

output "VM3-admin_password" {
  sensitive = true
  value     = azurerm_windows_virtual_machine.VM3.admin_password

}
