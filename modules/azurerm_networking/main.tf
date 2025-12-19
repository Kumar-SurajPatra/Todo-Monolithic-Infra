#esource "azurerm_virtual_network" "vnets"{
#   for_each = var.vnets
#   name = each.value.vnet_name
#   location = each.value.location
#   resource_group_name = each.value.rg_name
#   address_space = each.value.address_space
#   tags = each.value.tags
#   #dns_servers = each.value.dns_servers
#   #private_endpoint_vnet_policies = each.value.private_endpoint_vnet_policies
#
#   dynamic "subnet"{
#       for_each = each.value.subnets
#       content{
#           name = subnet.value.name
#           address_prefixes = subnet.value.address_prefixes
#       }
#   }
#