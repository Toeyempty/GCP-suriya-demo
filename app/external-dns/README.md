# 4. Install external-dns

kubectl apply -f external-dns.yaml

kubectl create --namespace "external-dns" --filename externaldns.yaml