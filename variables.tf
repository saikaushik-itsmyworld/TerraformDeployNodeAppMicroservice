#variables in the script
variable "env"{
    description = "env: dev or prod"
}
variable "image" {
  description = "image for container"
  type = "map"
 
}
variable "container_name" {
  description = "name for the container"
  type = "map"
  
}
variable "internal_port" {
    type = "map"
    
}
variable "external_port" {
    type = "map"
   
}