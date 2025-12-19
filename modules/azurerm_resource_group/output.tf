output "rg_ids"{
    value = {for k, v in azurermazurerm_resource_group.rgs : k => v.id}
}