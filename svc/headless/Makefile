install:
	kubectl apply -f ./busybox.yaml	

clean:
	kubectl delete -f busybox.yaml

kubectl:
	@echo "svc"
	@echo "------------------"
	kubectl get svc default-subdomain
	@echo "\nentrypoint"
	@echo "------------------"
	kubectl get ep default-subdomain

nslookup:
	@echo "DNS record of pod"
	@echo "------------------"
	kubectl run -i --tty --image busybox dns-test --restart=Never --rm nslookup default-subdomain.default.svc.cluster.local
	@echo "\n\nDNS record of svc"
	@echo "------------------"
	kubectl run -i --tty --image busybox dns-test --restart=Never --rm nslookup busybox-1.default-subdomain.default.svc.cluster.local