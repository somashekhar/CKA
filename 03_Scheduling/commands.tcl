kubectl -n kube-system get pods         # Gets details of the k8s environment
Kubectl get pods --selector app=App1    # using label and selector

kubectl explain pod --recursive | less
kubectl explain pod --recursive | grep -A5 tolerations
kubectl get pods --show-labels
kubectl get pods -l env=dev                 # get pods with label "env=dev"
kubectl get pods --selector "env=dev"
kubectl get all -l "env=dev, bu=finance"


kubectl taint nodes node-name key=value:taint-effect    # taint-effect are NoSchedule | PreferNoSchedule | NoExecute
kubectl taint nodes node1 app=blue:NoSchedule
kubectl describe node <node name> | grep Taint

kubectl label nodes <node name> <label-key>=<label-value>
kubectl label nodes node01 size=Large
kubectl get nodes node01 --show-labels

kubectl describe daemonsets <daemonset name>


kubectl run podName --image=nginx --command sleep 1000 --restart=Never --dry-run=client 

kubectl get events
