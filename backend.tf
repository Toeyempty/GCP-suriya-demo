terraform {
 backend "gcs" {
   bucket  = "bucket_terraform_state"
   prefix  = "terraform/state"
  #  credentials = "./credential/suriya-demo-77de251688a0.json"
 }
}