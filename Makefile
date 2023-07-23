CLUSTER_NAME := my-multi-node-cluster
K8S_VERSION := v1.27.0

# Commands
up:
	#Buiding docker image:      I have used the below image when the image was in local machine but i just pushed this image to docker hub so you can pull, use and varify it.
	## cmd:	docker build -t app1:latest ./covergo-test/app1/
	#create cluster
	kind create cluster --config kind-config.yaml --name my-multi-node-cluster
	#loading images:       
	#now as you brought up your cluster, now if your image in local machine you have to load the image to the kind cluster 
	## cmd: kind load docker-image jahid/app1:local --name my-multi-node-cluster
deploy:
	kubectl apply -f ./covergo-test/manifests --context kind-$(CLUSTER_NAME)
down:
	kind delete cluster --name $(CLUSTER_NAME)
