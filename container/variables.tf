variable "image" {
  description = "image for container"
  default = "kausdeep/myapp:latest"
}
variable "container_name" {
  description = "name for the container"
  default = "myapp"
}
variable "internal_port" {
  default = "1337"
}
variable "external_port" {
  default = "1337"
}