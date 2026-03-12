resource "kubernetes_ingress_v1" "this" {
  metadata {
    name        = var.ingress_name
    namespace   = var.namespace_name
    annotations = var.annotations
  }

  spec {
    rule {
      host = "2048.local"

      http {
        path {
          path      = "/"
          path_type = "Prefix"

          backend {
            service {
              name = var.service_name
              port {
                number = var.service_port
              }
            }
          }
        }
      }
    }
  }
}