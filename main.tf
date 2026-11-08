# Raiz: solo orquesta los modulos y conecta sus entradas y salidas.

module "d1_database" {
  source = "./modules/d1_database"

  account_id = var.account_id
  name       = var.d1_database_name
}

module "worker" {
  source = "./modules/worker"

  account_id     = var.account_id
  script_name    = var.worker_name
  script_content = file("${path.root}/src/worker.js")
  d1_database_id = module.d1_database.id
}
