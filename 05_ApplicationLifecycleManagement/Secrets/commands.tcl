Imperative:
kubectl create secret generic <secret-name> --from-literal=<key>=<value>
kubectl create secret generic app-secret --from-literal=DB_Host=mysql --from-literal=DB_User=root --from-literal=DB_Password=paswrd


kubectl create secret generic <secret-name> --from-file=<path-to-file>
kubectl create secret generic app-secret --from-file=app_secret.properties

Declarative:
#Encode secret values
echo -n 'mysql' | base64
echo -n 'root' | base64

#Decode secret values
echo -n 'bXlzcWw' | base64 --decode 


kubectl get secrets

