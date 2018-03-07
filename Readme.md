# Corda Minikube Kubernetes

```
eval $(minikube docker-env)
./build-container.sh
./start.sh
kubectl port-forward party-a-<replicaset>-<pod> 10004
./stop.sh
```

Note that you might encounter the "pod unable to reach itself through a
service" [issue](https://github.com/kubernetes/minikube/issues/1568), when the
webserver attempts to connect to its node.
