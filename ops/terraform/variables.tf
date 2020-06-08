variable "password" {
    type = string
}
variable "user_name" {
    type = string
}
variable "auth_url" {
    default = "https://pouta.csc.fi:5001/v3"
}
variable "tenant_id" {
    default = "e8888202dc3f466c94cce077c5041676"
}
variable "region" {
    default = "regionOne"
}
variable "project_domain_name" {
    default = "Default"
}