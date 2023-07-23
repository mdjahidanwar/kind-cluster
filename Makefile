CLUSTER_NAME := my-multi-node-cluster
K8S_VERSION := v1.27.0

# Commands
up:
	docker build -t app1:latest ~/test/covergo-test/app1/
	kind create cluster --config kind-config.yaml --name my-multi-node-cluster
	kind load docker-image jahid/app1:local --name my-multi-node-cluster
deploy:
	kubectl apply -f /home/jahid/test/covergo-test/manifests --context kind-$(CLUSTER_NAME)
down:
	kind delete cluster --name $(CLUSTER_NAME)
