# Cria uma VM com o Google Cloud
resource "google_compute_instance" "helloworld" {
  name         = "estagiario"
  machine_type = "f1-micro"
  zone         = var.zonec1

  # Defini a Imagem da VM
  boot_disk {
    initialize_params {
      image = var.distro
    }
  }

  # Habilita rede para a VM com um IP público
  network_interface {
    network = "default"
    access_config {
    }
  }
}
# Cria SQL Gerenciado com Engine MySQL 
resource "google_sql_database_instance" "helloworld" {
  name             = "database2"
  database_version = "MYSQL_5_7"
  region           = "us-central1"

  settings {
    tier = "db-f1-micro"
  }
}
