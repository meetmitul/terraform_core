resource "azurerm_virtual_network" "vnet-inteflow" {
  name                = "vnet-prod-ausoutheast-001"
  location            = var.location
  resource_group_name = var.resourcegroupname
  address_space       = ["10.0.0.0/16"]

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "subnet2"
    address_prefix = "10.0.2.0/24"
  }

  subnet {
    name           = "subnet3"
    address_prefix = "10.0.3.0/24"
 #   security_group = azurerm_network_security_group.example.id
  }
}
