terraform {
 backend "gcs" {
   bucket  = "gke-tutorial-k8o-tarraform-state"
   prefix  = "terraform/state"
 }
}
