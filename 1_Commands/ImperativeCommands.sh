# Pod
kubectl run nginx --image=nginx
kubectl run nginx --image=nginx --dry-run=client -o yaml 

# Deployment
kubectl create deployment nginx --image=nginx
kubectl create deployment nginx --image=nginx --dry-run=client -o yaml
kubectl create deployment nginx --image=nginx --replicas=4 --dry-run=client -o yaml
kubectl create deployment nginx --image=nginx --replicas=4 --dry-run=client -o yaml > nginx-deployment.yaml

kubectl scale deployment nginx --replicas=4

# Service
kubectl create service clusterip redis --tcp=6379:6379 --dry-run=client -o yaml
kubectl expose pod redis --port=6379 --name redis-service --dry-run=client -o yaml

kubectl create service nodeport nginx --tcp=80:80 --node-port=30080 --dry-run=client -o yaml
kubectl expose pod nginx --port=80 --name nginx-service --type=NodePort --dry-run=client -o yaml

# Namespace
kubectl create ns <namespace name>