output "server_id"{
    value = {for k, v in azurermazurerm_mssql_server.sql_server : k =>v.id}
}