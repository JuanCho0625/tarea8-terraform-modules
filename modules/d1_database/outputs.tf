output "id" {
  description = "ID de la base de datos D1"
  value       = cloudflare_d1_database.this.id
}

output "name" {
  description = "Nombre de la base de datos D1"
  value       = cloudflare_d1_database.this.name
}
