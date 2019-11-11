resource "google_compute_instance" "docker" {
  name         = "${var.name_prefix}-docker-${format("%02d", count.index + 1)}"
  machine_type = var.mach_type
  zone         = var.zone
  count        = var.num_instance
  tags         = var.tags

  boot_disk {
    initialize_params {
      image = var.db_disk_image
    }
  }

  network_interface {
    network = var.instance_network_name

    access_config {}
  }

  metadata = {
    # путь до публичного ключа
    ssh-keys = "appuser:${file(var.public_key_path)}appuser1:${file(var.public_key_path)}appuser2:${file(var.public_key_path)}"
  }
}

# Правило firewall
resource "google_compute_firewall" "firewall_tcp" {
  name = "allow-${var.name_prefix}-tcp-default"
  network = var.instance_network_name
  allow {
    protocol = "tcp"
    ports = var.tcp_ports
  }
  target_tags = var.tags
  source_ranges = var.source_ranges
}
