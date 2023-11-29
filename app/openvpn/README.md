Site address
https://35.198.205.98:443// 
Admin URL
https://35.198.205.98:943/admin 
Admin user
openvpn
Admin password (Temporary)
xUis934HXGC-
Instance
openvpn-access-server-1-vm
Instance zone
asia-southeast1-a
Instance machine type
e2-micro

nexus.suriya.com


gcloud compute firewall-rules create allow-ssh-ingress-from-iap --direction=INGRESS --action=allow --rules=tcp:22 --source-ranges=35.235.240.0/20