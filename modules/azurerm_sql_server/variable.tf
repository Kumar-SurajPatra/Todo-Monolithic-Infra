variable "sql_servers"{
    type = map(objects({
        name = string
        resource_group_name = string
        location = string
        version = string
        admin_login = string
        admin_password = string
        tags = optional(map(string))
    }))
}