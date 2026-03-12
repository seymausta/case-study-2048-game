variable "name" {
  type        = string
  description = "Deployment name"
}

variable "namespace" {
  type        = string
  description = "Namespace for the deployment"
}

variable "replicas" {
  type        = number
  default     = 1
  description = "Number of replicas"
}

variable "labels" {
  type        = map(string)
  default     = {}
  description = "Labels for deployment and pods"
}

variable "container_name" {
  type        = string
  description = "Container name"
}

variable "container_image" {
  type        = string
  description = "Container image"
}

variable "container_port" {
  type        = number
  description = "Port exposed by the container"
}