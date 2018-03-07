# Corda Minikube Kubernetes

```
eval $(minikube docker-env)
./build-container.sh
./start.sh
kubectl port-forward party-a-<replicaset>-<pod> 10004
./stop.sh
```
