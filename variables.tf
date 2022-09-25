variable "default_ttl" {
  type = string
  description = "Default TTL for all records"
}

variable "domain_name" {
  type = string
  description = "Name for the domain"
}

variable "host_ips" {
  description = "List of hosts and their ips"
  type = map(string)
}

variable "a_records" {
  description = "List of A type records to be added"
  type = map(object({
    name = string
    host = string
  }))
}
