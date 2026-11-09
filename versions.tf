terraform {
  required_version = ">= 1.5.0"

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5.0"
    }
  }
}

provider "cloudflare" {
  # trimspace evita errores por saltos de linea o espacios al pegar el token en HCP
  api_token = trimspace(var.api_token)
}
