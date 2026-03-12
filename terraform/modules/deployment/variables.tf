variable "namespace_name" {
  type        = string
  description = "Kubernetes namespace name"
}

# Deployment

variable "deployment_name" {
  type        = string
  description = "Deployment name"
}

variable "replicas" {
  type    = number
  default = 1
}

variable "labels" {
  type    = map(string)
  default = {}
}

variable "container_name" {
  type = string
}

variable "container_image" {
  type = string
}

variable "container_port" {
  type = number
}

# Service

variable "service_name" {
  type = string
}

variable "service_port" {
  type = number
}

variable "target_port" {
  type = number
}

variable "service_type" {
  type    = string
  default = "ClusterIP"
}

# Ingress

variable "ingress_name" {
  type = string
}

variable "host" {
  type        = string
  description = "Host for the ingress"
}

variable "annotations" {
  type    = map(string)
  default = {}
}


