# Introduction

With hostPort you can expose container port to the external network at the address \<hostIP>:\<hostPort\>, where the hostIP is the IP address of the Kubernetes node where the container is running and the hostPort is the port requested by the user. 

But requests are forwarded by iptables from node to pod, instead of serving at hostIP. So podIP is different from hostIP. You can find more information by
``` shell
iptables -S -t nat
```