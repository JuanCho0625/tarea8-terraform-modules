variable "account_id" {
  description = "ID de la cuenta de Cloudflare"
  type        = string
}

variable "script_name" {
  description = "Nombre del Worker"
  type        = string
}

variable "script_content" {
  description = "Codigo fuente (ES module) del Worker"
  type        = string
}

variable "main_module" {
  description = "Nombre del modulo principal del Worker"
  type        = string
  default     = "worker.js"
}

variable "compatibility_date" {
  description = "Fecha de compatibilidad del runtime de Workers"
  type        = string
  default     = "2025-01-01"
}

variable "d1_database_id" {
  description = "ID de la base de datos D1 que se enlaza al Worker"
  type        = string
}

variable "d1_binding_name" {
  description = "Nombre del binding de D1 dentro del Worker (env.<nombre>)"
  type        = string
  default     = "DB"
}

variable "enable_workers_dev" {
  description = "Publicar el Worker en el subdominio workers.dev"
  type        = bool
  default     = true
}
