<!-- # 3. Install Cert-manager -->

https://cert-manager.io/docs/installation/helm/

helm repo add jetstack https://charts.jetstack.io
helm repo update

helm upgrade --install cert-manager jetstack/cert-manager --namespace cert-manager --create-namespace  --version v1.13.0 --values values-file.yaml

https://github.com/stefanprodan/istio-gke/blob/master/docs/istio/05-letsencrypt-setup.md

GCP_PROJECT=suriya-demo

gcloud iam service-accounts create dns-admin \
--display-name=dns-admin \
--project=suriya-demo

gcloud iam service-accounts keys create ./gcp-dns-admin.json \
--iam-account=dns-admin@suriya-demo.iam.gserviceaccount.com \
--project=suriya-demo

gcloud projects add-iam-policy-binding suriya-demo \
--member=serviceAccount:dns-admin@suriya-demo.iam.gserviceaccount.com \
--role=roles/dns.admin

kubectl create secret generic cert-manager-credentials \
--from-file=./gcp-dns-admin.json \
--namespace=cert-manager

kubectl create secret generic cert-manager-credentials \
--from-file=./gcp-dns-admin.json \
--namespace=istio-system

gcloud components install gke-gcloud-auth-plugin
export USE_GKE_GCLOUD_AUTH_PLUGIN=True
gcloud container clusters get-credentials suriya-demo-cluster

kubectl apply -f gateway.yaml
kubectl apply -f certificate.yaml
kubectl apply -f certificate-suriya.yaml
kubectl apply -f issuer.yaml

<!-- 
kubectl create secret generic cert-manager-credentials \
--from-file=/Users/suriyas/Desktop/demo/GCP-suriya-demo/credential/suriya-demo-77de251688a0.json \
--namespace=istio-system


kubectl create secret generic cert-manager-credentials \
--from-file=/Users/suriyas/Desktop/demo/GCP-suriya-demo/credential/suriya-demo-77de251688a0.json \
--namespace=cert-manager -->
sg-01a0f8408df6da9c7
22

sg-0ab3312baef8f538d
80

sg-0ab3312baef8f538d
443

10.0.0.0/20

prod vpc
vpc-07a7ea6fe135d7f18


gcloud projects add-iam-policy-binding suriya-demo \
   --member serviceAccount:dns01-solver@suriya-demo.iam.gserviceaccount.com \
   --role roles/dns.admin


gcloud iam service-accounts keys create key.json \
   --iam-account dns01-solver@suriya-demo.iam.gserviceaccount.com

kubectl create secret generic cert-manager-credentials \
   --from-file=key.json \
   --namespace=cert-manager