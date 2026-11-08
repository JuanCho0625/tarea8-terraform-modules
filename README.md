# Tarea 8 - Terraform Modules y HCP Terraform

Refactorizacion de la Practica 11 (Cloudflare Worker + base de datos D1) en modulos,
desplegada desde HCP Terraform (Terraform Cloud) con un workspace conectado a GitHub.

## Estructura

```
.
├── main.tf            # Raiz: invoca los modulos
├── variables.tf
├── outputs.tf
├── versions.tf        # Provider de Cloudflare
├── src/worker.js      # Codigo del Worker
└── modules/
    ├── d1_database/   # cloudflare_d1_database
    └── worker/        # cloudflare_workers_script + subdominio workers.dev
```

## Variables del Workspace (HCP Terraform)

| Variable           | Categoria  | Sensible |
|--------------------|------------|----------|
| `account_id`       | Terraform  | No       |
| `api_token`        | Terraform  | **Si**   |
| `worker_name`      | Terraform  | No (default `tarea-8-worker`) |
| `d1_database_name` | Terraform  | No (default `tarea-8-db`) |

## Flujo

1. Crear organizacion y workspace **Version Control Workflow** apuntando a este repositorio.
2. Agregar las variables anteriores en *Workspace > Variables*.
3. Activar *Auto-apply* (o confirmar el apply manualmente).
4. Hacer `git push` a `main`: HCP Terraform ejecuta plan y apply.
