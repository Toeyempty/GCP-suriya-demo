<!-- # 1. install argoCD -->
## helm repo add argocd  https://argoproj.github.io/argo-helm
## helm upgrade --install argocd -n argocd argo/argo-cd  --create-namespace
<!-- If you have values file  -->
## helm upgrade --install argocd -n argocd argo/argo-cd -f argocd.yaml --create-namespace
