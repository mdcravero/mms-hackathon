resource "kubernetes_service" "app" {
  metadata {
    name = var.app
    namespace = "frontend"
  }
  spec {
    selector = {
      app = kubernetes_deployment.app.metadata.0.labels.app
    }
    port {
      port        = 80
      target_port = 3000
    }
    type = "LoadBalancer"
  }
} 