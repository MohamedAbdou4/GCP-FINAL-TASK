resource "google_compute_firewall" "python-app-fw-allow-ssh" {

  name          = "python-app-fw-allow-ssh"
  direction     = "INGRESS"
  network       = google_compute_network.python-app-vpc.name
  source_ranges = ["35.235.240.0/20"]

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
}

#======================================================

# resource "google_compute_firewall" "python-app-fw-denay-all" {

#   name          = "python-app-fw-denay-all"
#   direction     = "EGRESS"
#   network       = google_compute_network.python-app-vpc.name
#   source_ranges = ["10.0.1.0/24"]


#   deny {
#     protocol = "all"
#   }

# }
