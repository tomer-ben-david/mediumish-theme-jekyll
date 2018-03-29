---
title:  "devops cheasheet"
date:   2018-01-16 22:18:00
categories: cheatsheet,devops
comments: true
permalink: devops-cheatsheet
---

| Docker                       | Command                                  |
| ---------------------------- | ---------------------------------------- |
| Bash shell to running docker | `docker exec -it 56a93cc76fde /bin/bash` |
| Run nginx                    | `docker run --name nginx -p 80:80 nginx` |
|                              |                                          |
| **Minikube**                 |                                          |
|                              |                                          |
| **Kubernetes**               |                                          |
| Master stateless             | kubernetes mater is stateless so we can start 5 masters if we want.  3 masters per 5000 nodes maybe. |
| DaemonSet                    | enforces a single pod on each node (with filtering) |
| Service                      | implemented by iptables, creates A record in DNS pod in control plane of k8s. |
| KubeProxy                    | process the brain behind service it's updating the iptables. packets not going through it. |
| Ports                        | Containers on same pod cannot have same port on different pods can have.  On same port communicate via same loopback network interface. |
| Readiness/Liveness           | Readiness => false, removed from LB, Liveness => false, kubectl kills pod. |
| get labels for pod           | `kubectl get pod --show-labels`          |
| services endpoints           | `kubectl get endpoints`                  |
| Expose as a service          | `kubectl expose                          |
| NodePort                     | Exposes the service on each Node's IP at a static port (the NodePort ). A ClusterIP service, to which the NodePort service will route, is automatically created. You'll be able to contact the NodePort service, from outside the cluster, by requesting <NodeIP>:<NodePort> . |
| Get host where node runs     | `kubectl get pod -owide`                 |
| Service Exposure ip/port     | `ClusterIp exposure (k8s) < NodePort exposure (vms) < LoadBalancer exposure (world).`  `kubectl expose deployment tomerbdhost --name my-svc --type [ClusterIp|NodePort|LoadBalancer] --port 3000 --target-port 3000    ` |
| Expose LoadBalancer          | It knew to automatically go to GCP and expose it on google load balancer in google console search for `Load Balancers` in google cloud console and this will be your external ip you just need to run the above command it autoamtically connect to one of your load balancers. |
| kubectl apply                | Reupload kubernetes file yaml `kubectl apply -f host-id-deployment.yaml` |
| **Scheduling**               |                                          |
| Node affinity                | If you want to control that some pods are on same node so when the pods communicate they are affinity to same node.  Or use labels to have pods on same `zone` or `region` |
| labels                       | kubectl label set something, define labels and then assign pods to labels for nodes |
| node affinity                | like labels selector but more advanced best effort |
| **Ingress**                  | Ingress is data (rules) ingress controller process that reads it that the outcome is nginx! |
|                              | `kubectl create -f ingress.yaml`         |
|                              | You must define also `IngressController` which loads ingress rules to load balancer. |
|                              | We do SSL termination with the nginx and its config (ingress) |
| **Namespaces**               | In between namespaces add FQDN as prefix to DNS. |
| **Clusters**                 | `kubectl config get-clusters`            |
|                              | `less ~/.kube/config`                    |
| **kubectl**                  |                                          |
| get pods                     | `kubectl get pod -o wide`                |
| print yaml                   | `kubectl get ingress -o yaml` # print yaml for my ingress |
|                              | `kubetl get <id> -o yaml`                |
|                              | `kubectl edit ds` # edit DatemonSet yamls |
| ls                           | `kubectl exec etcd-0 -- ls -ltr /var/run/etcd` |
| watch                        | `kubectl get pods -w`                    |
| delete pod                   | `kubectl delete pod <podname>`           |
| delete by file               | `kubectl delete -f persistency/etcdCluster.yaml` |
| labels                       | `kubectl get node —show-labels`          |
| **Volumes**                  |                                          |
| Dynamic claims               | You can have dynamic claims so like in statefulSets volumes are created dynamically for them. |
| **Networking**               |                                          |
| docker bridge                | Docker host creats `br0` bridge          |
| docker veth                  | every container has veth interface       |
| kuberentes different         | pod can communicate with another on the cluster |
| NodePort                     | export service port on VM                |
| Pod networking               | `CNI` - Container Network Interface - `—network-plugin=cni` plugin for networking simulating hardware for kubernetes. |
| —network-plugin=kubenet      | docker networking, then we need to configure routing or our cloud provider gives us the ip, but cannot do overlay networks, in cloud we are given the networking |
| —network-plugin=cni          | with this we don't use docker networking we use custom like flannel, in on premise very important to know to choose, like cni that does firewall or not? today in our cluster all pods can tlak to all pods, so we need to choose the cni.  with cni we write custom configuration for networking. |
| Overlay network              | abstraction above multiple networks so it simulates a single network like layer 2 as if we ar eon same switch however we are on mutiple networks. |
| flannel                      | is one of the cni, its like sitting on exit-entry of vm's and knwos to translate internally to the pods and externally to other machines. |
| preserve source ip           | The only way to preserve client source ip is by using external traffic policy `OnlyLocal` load balancer will remove any vm without pods all traffic will go to local pod traffic always goes to local pod on node. |
| **StatefulSets**             | `kind: StatefulSet`, Pets (not cattle), loading with same ip, with permanent storage, same identity |
|                              | `kubectl get statefulset`                |
| **Security**                 | two entities, users (us), service-accounts - in cluster api access for services. |

| Item                | Command                                  |
| ------------------- | ---------------------------------------- |
|                     |                                          |
| run container       | `docker run -p 3000:3000 tomerbd/tomerbdhost:1.0` |
| gcloud              | `gcloud container clusters get-credentials tomer-ben-david --zone europe-west1-b --project cldz-course-thomsonreuters` |
| kubectl run         | `kubectl run tomerbdhost --image tomerbd/tomerbdhost:1.0 --port=3000` # => run our image at google cloud |
| get pods shell acce | `kubectl get pod` ; `kubectl exec -it tomerbdhost-2796297851-s5xmw sh` |
| Expose to NodePort  | `kubectl expose deployment tomerbdhost --name tomerbdhost-svc --type NodePort --port 3000 --target-port 3000` |
| Ingress             | `kubectl create -f ingress.yaml`         |


