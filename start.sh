kubectl -n jx create configmap corda --from-file=config
kubectl -n jx apply -f services/
kubectl -n jx apply -f deployments/
