kubectl -n default create configmap corda --from-file=config
kubectl -n default apply -f services/
kubectl -n default apply -f deployments/
