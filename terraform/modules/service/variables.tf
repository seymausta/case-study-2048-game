variable "name" {
  type        = string
  description = "Service name"
}

variable "namespace" {
  type        = string
  description = "Namespace for the service"
}

variable "labels" {
  type        = map(string)
  default     = {}
  description = "Labels for selector"
}

variable "port" {
  type        = number
  description = "Service port"
}

variable "target_port" {
  type        = number
  description = "Target container port"
}

variable "type" {
  type        = string
  default     = "ClusterIP"
  description = "Service type"
}