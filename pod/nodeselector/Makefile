install:
	kubectl apply -f ./nodeselector.yaml

clean:
	kubectl delete -f ./nodeselector.yaml

kubectl:
	kubectl get pods -o wide nodeselector

	@echo "\nAssumes the existence of the label: node-role.kubernetes.io/master, and tries to assign the pod to the labelled node"
	@echo "------------------"
	kubectl describe pods nodeselector | grep Node-Selectors