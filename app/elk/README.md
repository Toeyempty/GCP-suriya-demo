
## Helm Chart
## Elasticsearch
https://blog.knoldus.com/how-to-deploy-elk-stack-on-kubernetes/
kubectl create ns monitoring-loggingging 
https://github.com/elastic/helm-charts

helm repo add elastic https://helm.elastic.co
helm repo update
helm install elasticsearch elastic/elasticsearch -n monitoring-loggingging --create-namespace --values values.elsticsearch.yaml
helm uninstall elasticsearch -n monitoring-logging 

## Kibana
helm repo add elastic https://helm.elastic.co
helm install kibana elastic/kibana -n monitoring-loggingging --create-namespace --values values.kibana.yaml
helm uninstall kibana -n monitoring-logging 

## Logstash
helm repo add elastic https://helm.elastic.co
helm install logstash elastic/logstash -n monitoring-loggingging --create-namespace --values values.logstash.yaml
helm uninstall logstash -n monitoring-logging

## Filebeat
helm repo add elastic https://helm.elastic.co
helm install filebeat elastic/filebeat -n monitoring-loggingging --create-namespace --values values.filebeat.yaml
helm uninstall filebeat -n monitoring-logging


helm upgrade --install kibana bitnami/kibana --set elasticsearch.hosts[0]="elasticsearch-master.monitoring-loggingging.svc.cluster.local" --set elasticsearch.port="9200" -n monitoring-loggingging 