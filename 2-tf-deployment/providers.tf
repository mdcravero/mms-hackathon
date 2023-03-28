provider "google" {
  project = var.project_id
  region  = var.region
}
#I Used the kubeconfig file to autenticated myself
provider "kubernetes" {
  config_path = "~/.kube/config"
}

