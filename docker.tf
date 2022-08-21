resource "docker_image" "centos_image" {
  name = "centos:latest"
}

# Creating a Docker Container using the latest centos image
resource "docker_container" "first_container" {   
  # Specifying the name of the container as my_container
  name = "first_container"  
  image = docker_image.centos.latest       
}
