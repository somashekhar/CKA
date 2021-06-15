#Imperative:
kubectl create configmap <config-name>   --from-literal=<key>=<value>
kubectl create configmap app-config      --from-literal=APP_COLOR=blue   --from-literal=APP_MOD=prod    

kubectl create configmap <config-name> --from-file=<path-to-file>
kubectl create configmap app-config    --from-file=app_config.properties

#Declarative:


kubectl get configmaps
kubectl describe configmaps


