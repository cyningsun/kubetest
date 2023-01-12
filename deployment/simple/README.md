# Introduction

A deployment always have a deployment、replicaset object and serveral pods which are defined in deployment. You can refer following command:
- `make kubectl`

Which is same as following commands:
- deployment: `kubectl get Deployment -o wide simple-deployment`
- replicaset: `kubectl get rs -o wide --selector=app=simple-deployment-app`
- pods: `kubectl get pod -o wide --selector=app=simple-deployment-app`