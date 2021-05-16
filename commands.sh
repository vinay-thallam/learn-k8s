

kubectl create deployment httpd-frontend --image=httpd:2.4-alpine

kubectl scale deployment --replicas=3 httpd-frontend

kubectl get pods

kubectl get namespace

kubectl get ns

kubectl get ns --no-headers | wc -l

kubectl create namespace dev

kubectl get pods --namespace=dev

kubectl config set-context $(kubectl config current-context) --namespace=dev

kubectl get pods --all-namespace

# mysql.connect("db-service")
# mysql.connect("db-service.dev.svc.cluster.local")

kubectl run httpd --image=httpd:alpine --port=80 --expose

kubectl run redis --image=redis:alpine --labels=tier=db

kubectl expose pod redis --name redis-service --port 6379 --target-port 6379

kubectl describe svc redis-service