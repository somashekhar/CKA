alias shortName="your custom command here"
alias k="kubectl"
alias kg="kubectl get"
alias kde="kubectl describe"
alias ke="kubectl edit"
alias ka="kubectl apply"
alias kdl="kubectl delete"

## Pod
# Create
kubectl create -f pod.yml
kubectl create -f pod.yml --namespace=dev

kubectl run nginx --image=nginx			# from 1.18 it creates pod, deployment previously
kubectl run nginx --image=nginx --dry-run=client -o yaml > pod.yaml


# Get


# Update

# Delete