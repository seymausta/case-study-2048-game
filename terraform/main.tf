resource "kubernetes_namespace" "game" {
  metadata {
    name = "game"
  }
}
resource "kubernetes_deployment" "game_2048" {
  metadata {
    name = "game-2048-deployment"  
    namespace = kubernetes_namespace.game.metadata[0].name 
    labels = {
      app = "game-2048"              
    }
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "game-2048"           
      }
    }

    template {
      metadata {
        labels = {
          app = "game-2048"          
        }
      }

      spec {
        container {
          image = "seymausta1/2048-game:latest"
          name  = "game-2048-container"

          port {
            container_port = 80
          }
        }
      }
    }
  }
}

resource "kubernetes_service_v1" "game_2048_service" {
  metadata {
    name = "game-2048-service"     
    namespace = kubernetes_namespace.game.metadata[0].name 
  }

  spec {
    selector = {
      app = "game-2048"             
    }

    port {
      port        = 80
      target_port = 80
    }

    type = "NodePort"
  }
}

resource "kubernetes_ingress_v1" "game_2048_ingress" {
  metadata {
    name      = "game-2048-ingress"
    namespace = kubernetes_namespace.game.metadata[0].name
    annotations = {
      "nginx.ingress.kubernetes.io/rewrite-target" = "/"
    }
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
              name = kubernetes_service_v1.game_2048_service.metadata[0].name
              port {
                number = 80
              }
            }
          }
        }
      }
    }
  }
}