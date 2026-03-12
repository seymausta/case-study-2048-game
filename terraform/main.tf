module "deployment" {
  source = "./modules/deployment"

  namespace_name = local.namespace

  deployment_name = "game-2048-deployment"
  replicas        = 1
  labels          = { app = "game-2048" }

  container_name  = "game"
  container_image = "seymausta/2048:latest"
  container_port  = 80

  service_name = "game-2048-service"
  service_port = 80
  target_port  = 80
  service_type = "ClusterIP"

  ingress_name = "game-2048-ingress"
  host         = "2048.example.com"

  annotations = {
    "kubernetes.io/ingress.class" = "nginx"
  }
}