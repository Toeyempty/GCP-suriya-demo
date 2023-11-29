
gitlab-registry
glpat-WFV2s6eqFTigkExqvtz_


docker login registry.gitlab.com
docker build -t registry.gitlab.com/gke-demo1/go-demo .
docker push registry.gitlab.com/gke-demo1/go-demo



gitlab-runner register  --url https://gitlab.com  --token glrt-PGzbUXwZMyrfAjf5sKSW