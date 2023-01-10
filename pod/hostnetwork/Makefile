

install:
	kubectl apply -f ./hostnetwork.yaml

clean:
	kubectl delete -f ./hostnetwork.yaml

kubectl:
	@echo "nginx pod ip"
	@echo "------------------"
	kubectl get po -o wide | grep hostnetwork | awk '{ print $$6 }'
	@echo "\nClusterFirstWithHostNet setting dns server to cluster dns"
	@echo "------------------"
	kubectl exec -it hostnetwork -- cat /etc/resolv.conf 