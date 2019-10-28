#Download the latest Ghost image
module "image" {
  source = "./image"
  image = "${lookup(var.image, var.env)}"
}

# start the container
module "container" {
  source = "./container"
  image = "${module.image.image_out}"
  container_name = "${lookup(var.container_name, var.env)}"
  internal_port = "${lookup(var.internal_port,var.env)}"
  external_port = "${lookup(var.external_port, var.env)}"
}
resource "null_resource" "null_id" {
  provisioner "local-exec" {
    command = "echo ${module.container.container_name}:${module.container.IP_Address} >> container.txt"
  }
}
