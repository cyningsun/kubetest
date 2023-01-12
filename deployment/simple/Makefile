install:
	kubectl apply -f ./simple.yaml

clean:
	kubectl delete -f ./simple.yaml

kubectl:
	@echo "simple deployment"
	@echo "------------------"
	kubectl get Deployment -o wide simple-deployment
	@echo "\nsimple deployment: replicaset"
	@echo "------------------"
	kubectl get rs -o wide --selector=app=simple-deployment-app
	@echo "\nsimple deployment: pod"
	@echo "------------------"
	kubectl get pod -o wide --selector=app=simple-deployment-app