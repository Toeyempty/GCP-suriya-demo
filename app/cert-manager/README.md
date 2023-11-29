# 3. Install Cert-manager

kubectl apply -f cert-manager.yaml
kubectl apply -f letsencrypt-issuer.yaml
kubectl apply -f letsencrypt-staging-issuer.yaml