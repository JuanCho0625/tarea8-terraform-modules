variable "account_id" {
  description = "ID de la cuenta de Cloudflare"
  type        = string
}

variable "name" {
  description = "Nombre de la base de datos D1"
  type        = string
}

variable "read_replication_mode" {
  description = "Modo de replicacion de lectura (disabled o auto)"
  type        = string
  default     = "disabled"
}
