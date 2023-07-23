**# kind-cluster**
It is a 3 node cluster deployed with kind where we have one control plane and 2 worker nodes. Cluster can be brought up,down and apply changes with a Makefile, where we have 3 parts up, down and deploy.

**Commands** which can be used from the project directory 
**make up**: to bring up the cluster 
**make deploy**: to deploy the manifests on the kubernetes cluster 
**make down**: to destry the cluster.

Inside kubernetes cluster there are 2 Http applications, **app1** and **nginx1**. 
**app1**: Developed locally to get the  current time on **0.0.0.0:8282/date**. It is then converted to microservice and loaded in kind kubernetes cluster. After that **app1** is deployed on a pod by declarative way. 
**nginx1**: Another http application. It is also deployed on a pod by declarative way in a yaml file. It is then connected with a **Service**. It has mounted volume with **PV** and **PVC**. The mounted path is **/data** dir.

Both applications are isolated
Like from **app1** the service **nginx1**(curl http://nginx1:8282) is forbiden, where from **nginx1** to **app1** the service is reachable(curl http://app1).
