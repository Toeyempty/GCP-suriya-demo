# 2. Install nexus

helm repo add sonatype https://sonatype.github.io/helm3-charts/
helm repo add sonatype https://sonatype.github.io/helm3-charts/


helm install my-nexus-repository-manager sonatype/nexus-repository-manager -n nexus --create-namespace
