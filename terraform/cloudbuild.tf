resource "google_cloudbuild_trigger" "gke-trigger" {
  name = "gke-tutorial-trigger"
  location = var.region

  trigger_template {
    branch_name = "^master$"
    repo_name   = var.source_repo_name
  }
  
  included_files = ["docker/**"]
  filename = "cloudbuild.yml"
}