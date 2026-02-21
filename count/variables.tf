variable "instances" {
    type = list
    default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend"]
}

# replace with your zone_id and domain_name
variable "zone_id" {
    default = "Z0439877UYVGSF6PAFL4"
}

variable "domain_name" {
    default = "chotu.online"
}

variable "fruits" {
    type = list(string)
    default = ["apple", "banana", "apple", "orange"]
}

variable "fruits_set" {
    type = set(string)
    default = ["apple", "banana", "apple", "orange"]
}