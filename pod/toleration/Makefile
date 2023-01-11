install:
	kubectl apply -f ./toleration.yaml

clean:
	kubectl delete -f ./toleration.yaml

taint:
	kubectl taint nodes docker-desktop pod-toleration:NoSchedule

desc-taint:
	kubectl get nodes -o custom-columns=NAME:.metadata.name,TAINTS:.spec.taints 

kubectl:
	@echo "Once the docker-desktop node is tainted, a pod will not be scheduled on there"
	@echo "------------------"
	kubectl describe pods toleration 

clean-taint:
	kubectl taint nodes docker-desktop pod-toleration:NoSchedule-

