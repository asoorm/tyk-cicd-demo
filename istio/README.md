Enable automatic sidecar injection

```shell script
kubectl label namespace default istio-injection=enabled
```

Start the httpbin service

```shell script
kubectl apply -f httpbin.yaml

serviceaccount/httpbin created
service/httpbin created
deployment.apps/httpbin created
```

Determine ingress ip & ports

```shell script
kubectl get svc istio-ingressgateway -n istio-system
```

Set Ingress IP and port environment variables

```shell script
export INGRESS_HOST=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.status.loadBalancer.ingress[0].ip}')
export INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="http2")].port}')
export SECURE_INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="https")].port}')
```

If ingress hostname, rather than IP:

```shell script
export INGRESS_HOST=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.status.loadBalancer.ingress[0].hostname}')
```

Create an istio gateway

```shell script
kubectl apply -f istio_gateway.yaml
```

Configure traffic routes for traffic entering via gateway

```shell script
kubectl apply -f istio_routes.yaml
```
