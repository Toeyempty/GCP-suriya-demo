helm repo add harbor https://helm.goharbor.io 

helm install harbor harbor/harbor -n harbor --create-namespace