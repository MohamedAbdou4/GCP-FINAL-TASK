resource "google_service_account" "gke-sa" {
  account_id   = "gke-sa"
  display_name = "GKE Service Account"
}

resource "google_project_iam_binding" "gke-sa-binding" {
  project = "iti-labs"
  role    = "roles/storage.objectViewer"
  members = ["serviceAccount:${google_service_account.gke-sa.email}"]

}
