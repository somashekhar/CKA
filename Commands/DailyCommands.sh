## Pod
# Create
kubectl create -f pod-definition.yml
kubectl create -f pod-definition.yml --namespace=dev

kubectl run nginx --image nginx			# from 1.18 it creates pod, deployment previously
kubectl run nginx --image nginx --dry-run=client -o yaml > pod.yaml


# Get


# Update

# Delete