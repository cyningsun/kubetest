# Introduction

With hostNetwork you can expose container ip and port to the external network at the address <hostIP>:<hostPort>, where the hostIP is the IP address of the Kubernetes node where the container is running and the hostPort is the port requested by the user. 

Pod is serving at hostIP. So podIP is exactly the same as hostIP


> Note that each time you start this Pod, it may be scheduled to a different node. The IP address of Pod also change. In addition, you need to consider whether the port of Pod conflicts with other services on the host. Therefore, you can use `hostNetwork: true` when you know that the port is only occupied by a specific application on specific hosts.

