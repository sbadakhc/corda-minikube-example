# Corda Minikube Kubernetes

Scripts and configuration to run the [cordapp-example](https://github.com/corda/cordapp-example) on [minikube](https://github.com/kubernetes/minikube).

Follow the steps below to get started.
```
eval $(minikube docker-env)
./build-container.sh
./start.sh
minikube service party-a
./stop.sh
```

After running `minikube service party-a` Party A's website opens in your browser.

Only the `default` kubernetes namespace is supported.

Note that you might encounter the "pod unable to reach itself through a
service" [issue](https://github.com/kubernetes/minikube/issues/1568), when the
webserver attempts to connect to its node. This can be resolved by running
`sudo ip link set docker0 promisc on` inside the minikube vm.
