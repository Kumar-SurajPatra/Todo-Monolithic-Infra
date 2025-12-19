#variable vnets{
#    type = map(object({
#        name = string
#        location = string
#        rg_name = string
#        address_space = list(string)
#        tags = optional(map(string))
#        subnets = optional(list(object9({
#            name = string
#            address_prefixes = list(string)
#        })),[])        
#    }))
#}