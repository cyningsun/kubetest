install:
	kubectl apply -f ./hostport.yaml

clean:
	kubectl delete -f ./hostport.yaml

kubectl:
	@echo "nginx using hostport"
	@echo "------------------"
	kubectl get po -o wide | grep hostport | awk '{ print $$6 }'
	@echo "\nClusterFirstWithHostNet setting dns server to cluster dns"
	@echo "------------------"
	kubectl exec -it hostport -- cat /etc/resolv.conf
	# iptables -S -t nat  