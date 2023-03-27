
variable "gke_num_nodes" {
  default     = 2
  description = "number of gke nodes"
}

variable "vpc_name" {
    type = string
}

variable "gke_name" {
    type = string
}

variable "app" {
  type        = string
  description = "Name of application"
  default     = "app-frontend"
}

variable "docker-image" {
  type        = string
  description = "name of the docker image to deploy"
  default     = "us-central1-docker.pkg.dev/apt1nyzpdoix7wqzvf4x9rxsmlx1wb/my-docker-repo/mms-front:latest"
}