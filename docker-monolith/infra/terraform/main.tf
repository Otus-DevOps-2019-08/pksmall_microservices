terraform {
  # Версия terraform
  required_version = "~> 0.12.8"
}

provider "google" {
  # credits
  credentials = "${file("~/.credentials/docker-key.json")}"
  # Версия провайдера
  version = "2.15"
  # ID проекта
  project = var.project
  region  = var.region
}

module "docker" {
  source = "./modules/docker"
  public_key_path = var.public_key_path
  zone = var.zone
  db_disk_image = var.db_disk_image
  num_instance = 2
}
