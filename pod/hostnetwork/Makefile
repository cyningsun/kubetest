install:
	kubectl apply -f ./hostnetwork.yaml

clean:
	kubectl delete -f ./hostnetwork.yaml

kubectl:
	@echo "nginx pod using hostnetwork"
	@echo "------------------"
	kubectl get po -o wide | grep hostnetwork | awk '{ print $$6 }'
	IP="$(shell kubectl get po -o wide | grep hostnetwork | awk '{ print $$6 }')" && echo "$$IP:80" |xargs curl
	@echo "\nClusterFirstWithHostNet setting dns server to cluster dns"
	@echo "------------------"
	kubectl exec -it hostnetwork -- cat /etc/resolv.conf 