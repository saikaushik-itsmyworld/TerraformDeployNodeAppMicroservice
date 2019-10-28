#Download the latest myapp image
resource "docker_image" "image_id" {
    name = "${var.image}"
}