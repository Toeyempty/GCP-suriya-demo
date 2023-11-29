# 3. Install Cert-manager

https://kosyfrances.com/letsencrypt-dns01/



gcloud iam service-accounts create dns-admin --display-name=dns-admin --project=suriya-demo

gcloud iam service-accounts keys create "c:/Users/Luzsec/Desktop/GCP-suriya-demo/credential/suriya-demo-77de251688a0.json" --iam-account=dns-admin@suriya-demo.iam.gserviceaccount.com --project=suriya-demo

gcloud projects add-iam-policy-binding suriya-demo --member=serviceAccount:dns-admin@suriya-demo.iam.gserviceaccount.com --role=roles/dns.admin

kubectl create secret generic cert-manager-credentials --from-file="c:/Users/Luzsec/Desktop/GCP-suriya-demo/credential/suriya-demo-77de251688a0.json" -n cert-manager


kubectl get order -n istio-system
kubectl get CertificateRequest -n istio-system


gcloud iam service-accounts keys create service-account.json --iam-account dns01-solver@suriya-demo.iam.gserviceaccount.com