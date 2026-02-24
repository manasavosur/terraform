#this is map
# variable "instances" {
#     type = map
#     default = {
#         mongodb = "t3.micro"
#         mysql = "t3.small"
#         user = "t3.micro"
#         shipping = "t3.small"
#         frontend = "t3.micro"
#     }
# }

# This is list and should be converted into set
variable "instances" {
    type = list
    default = ["mongodb", "redis"]                
}
#if you dont have frontend in list here remove public ip block in r53.tf or else it will crash and give error

variable "zone_id" {
    default = "Z0439877UYVGSF6PAFL4"
}

variable "domain_name" {
    default = "chotu.online"
}
