output "worker_name" {
  description = "Nombre del Worker desplegado"
  value       = module.worker.script_name
}

output "d1_database_id" {
  description = "ID de la base de datos D1"
  value       = module.d1_database.id
}
