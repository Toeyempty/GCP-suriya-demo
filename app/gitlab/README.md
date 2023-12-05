<!-- 2. Helm install gitlab runner -->
## helm repo add gitlab https://charts.gitlab.io
## helm repo update
## helm install --namespace gitlab-runner gitlab-runner -f gitlab-runner-values-file.yaml gitlab/gitlab-runner  --create-namespace


helm repo add gitlab https://charts.gitlab.io/
helm repo update
helm upgrade --install gitlab gitlab/gitlab \
  --timeout 600s \
  --set global.hosts.domain=gitlab.suriya-demo.com \
  --set certmanager-issuer.email=suriya.infortech9@gmail.com \
  --set global.edition=ce \
  --set postgresql.image.tag=13.6.0 \
  -n gitlab --create-namespace

helm upgrade --install gitlab gitlab/gitlab \
  --set global.hosts.domain=gitlab.suriya-demo.com \
  --set certmanager-issuer.email=suriya.infortech9@gmail.com -n gitlab
