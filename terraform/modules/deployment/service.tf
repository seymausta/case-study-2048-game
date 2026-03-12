resource "kubernetes_service_v1" "this" {
  metadata {
    name      = var.service_name
    namespace = var.namespace_name
  }

  spec {
    selector = var.labels
    port {
      port        = var.service_port
      target_port = var.target_port
    }

    type = var.service_type
  }
}