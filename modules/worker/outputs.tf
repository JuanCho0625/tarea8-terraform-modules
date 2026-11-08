output "script_name" {
  description = "Nombre del Worker desplegado"
  value       = cloudflare_workers_script.this.script_name
}
