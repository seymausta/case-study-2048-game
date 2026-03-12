resource "kubernetes_ingress_v1" "this" {
  metadata {
    name        = var.name
    namespace   = var.namespace
    annotations = var.annotations
  }

  spec {
    rule {
      host = var.host

      http {
        path {
          path     = "/"
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