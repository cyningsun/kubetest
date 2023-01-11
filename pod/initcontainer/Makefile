install:
	kubectl apply -f ./initcontainer.yaml

clean:
	kubectl delete -f ./initcontainer.yaml

kubectl:
	@echo "init http://info.cern.ch as index.html of nginx"
	@echo "------------------"
	kubectl exec -it initcontainer -c nginx -- curl localhost