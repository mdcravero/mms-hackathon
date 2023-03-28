resource "kubernetes_deployment" "app" {
  metadata {
    name = var.app
    namespace = "frontend"
    labels = {
      app = var.app
    }
  }
  spec {
    replicas = 3

    selector {
      match_labels = {
        app = var.app
      }
    }
    template {
      metadata {
        labels = {
          app = var.app
        }
      }
      spec {
        container {
          image = var.docker-image
          name  = var.app
          port {
            name           = "port-3000"
            container_port = 3000
          }
        }
      }
    }
  }
  depends_on = [
    google_container_cluster.primary
  ]
}