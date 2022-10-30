resource "google_compute_instance" "management_instance" {
  name         = "management_instance"
  machine_type = "e2-medium"
  zone         = "${var.region}-b"

  service_account {
    email  = google_service_account.manage-sa.email
    scopes = ["cloud-platform"]
  }

  boot_disk {
    initialize_params {
      image = var.image-id
    }
  }

  network_interface {
    network    = module.Network.python-app-vpc-name
    subnetwork = module.Network.python-app-managment-subnet-name
  }
}
