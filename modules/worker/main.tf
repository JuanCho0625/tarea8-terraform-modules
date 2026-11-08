resource "cloudflare_workers_script" "this" {
  account_id         = var.account_id
  script_name        = var.script_name
  content            = var.script_content
  main_module        = var.main_module
  compatibility_date = var.compatibility_date

  bindings = [
    {
      type = "d1"
      name = var.d1_binding_name
      id   = var.d1_database_id
    }
  ]
}

resource "cloudflare_workers_script_subdomain" "this" {
  account_id       = var.account_id
  script_name      = cloudflare_workers_script.this.script_name
  enabled          = var.enable_workers_dev
  previews_enabled = false
}
