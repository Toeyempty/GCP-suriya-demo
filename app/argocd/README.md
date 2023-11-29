# 1. install argoCD

helm upgrade --install argocd -n argocd argo/argo-cd -f argocd.yaml --create-namespace


# Install Gitlab
helm repo add gitlab https://charts.gitlab.io/
helm install gitlab gitlab/gitlab --set global.hosts.domain=gitlab.suriya.com --set certmanager-issuer.email=suriya.infortech9@gmail.com -n gitlab --create-namespace
