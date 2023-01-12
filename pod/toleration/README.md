# Introduction

Taints and tolerations work together to ensure that pods are not scheduled onto inappropriate nodes. One or more taints are applied to a node; this marks that the node should not accept any pods that do not tolerate the taints.

## First usecase
Firstly, you `taint` node
``` shell
make taint
```

then, you create pod
``` shell
make install
```

As a result, the pod will stay at `pending` status, because there is no node can be assigned to it because of toleration in pod spec.

## Second usecase

Firstly, you create pod
``` shell
make install
```
and wait it ready.

then, you `taint` node
``` shell
make taint
```

As a result, the pod will be evicted according the toleration in pod spec.

> Notice that if `tolerationSeconds` is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.




