terraform {
 backend "gcs" {
   bucket  = "bucket_terraform_state"
   prefix  = "terraform/state"
 }
}