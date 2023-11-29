# Terraform GCP GKE Infrastructure

https://github.com/MahmoudAbdelFatah/GCP-with-terraform/tree/master


### Configure GCP Credentials
```bash
# Configure default application credentials
$ gcloud auth application-default login

# Enable API service - container.googleapis.com
$ gcloud services enable container.googleapis.com
gcloud auth application-default login --project "suriya-demo"

$ gcloud auth activate-service-account --key-file "c:/Users/Luzsec/Desktop/GCP-suriya-demo/credential/suriya-demo-77de251688a0.json" --project "suriya-demo"
```
gcloud container clusters get-credentials cluster-1 --region=asia-southeast1-a

### Build Infrastructure on GCP
```bash
$ cd terraform/
$ terraform init
$ terraform apply --var-file dev.tfvars 
```
