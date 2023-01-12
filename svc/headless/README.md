# Introduction

Sometimes you don't need load-balancing and a single Service IP. In this case, you can create what are termed "headless" Services, by explicitly specifying "None" for the cluster IP (.spec.clusterIP).

Once after a headless service is created for pods, you will get:
- entrypoint: \<podIP\>:\<podPort\> of selected pods will appear in entrypoint after the pod is ready.
- DNS for pod: \<podIP\> is appended to DNS of pod
- DNS for svc: all \<podIP\>s are appended to DNS of service.

You can check above information by:
``` shell
make kubectl
make nslookup
```