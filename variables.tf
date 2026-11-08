variable "account_id" {
  description = "ID de la cuenta de Cloudflare"
  type        = string
}

variable "api_token" {
  description = "API token de Cloudflare con permisos de edicion sobre Workers Scripts y D1"
  type        = string
  sensitive   = true
}

variable "worker_name" {
  description = "Nombre del Worker"
  type        = string
  default     = "tarea-8-worker"
}

variable "d1_database_name" {
  description = "Nombre de la base de datos D1"
  type        = string
  default     = "tarea-8-db"
}
