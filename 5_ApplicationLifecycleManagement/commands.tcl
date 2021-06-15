kubectl create -f deployment-definition.yaml
kubectl get deployments

kubectl apply -f deployment-definition.yaml
kubectl set image deployment/myapp-deployment nginx=nginx:1.9.1     # results in inconsistent deployment config
kubectl edit deployment <deployment name>

kubectl rollout status deployment/<deployment name>
kubectl rollout status deployment/myapp-deployment

kubectl rollout history deployment/myapp-deployment
# Update stategy can be Recreate/RollingUpdate 
kubectl get replicasets  # use this to find a new intermediate replicaset created for RollingUpdate
kubectl get rs

# to undo the rollout
kubectl rollout undo deployment/myapp-deployment        

#Explain
kubectl explain pods --recursive | grep envFrom
