variable "sql_dbs"{
    type = map(object({
        name = string
        server_id = string
        
    }))
}