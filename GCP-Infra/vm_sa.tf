resource "google_service_account" "manage-sa" {
  account_id   = "manage-sa"
  display_name = "manage Service Account"
}

resource "google_project_iam_binding" "manage-sa-binding" {
  project = "iti-labs"
  role    = "roles/storage.objectViewer"
  members = ["serviceAccount:${google_service_account.manage-sa.email}"]

}

resource "google_project_iam_binding" "manage-sa-bindig-2" {
  project = "iti-labs"
  role    = "roles/container.admin"
  members = ["serviceAccount:${google_service_account.manage-sa.email}"]

}
