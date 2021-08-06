When designing make sure to take care of,
    1. Master components
        kube-apiserver, etcd, kube-scheduler, kube-controller-manager, container runtime, kubectl
    2. Woeker components
        kubelet, kubeproxy, container runtime
    3. Addons
        CoreDNS, CNI Plugin

## Education:
    * Minikube
    * Single Node cluster with kubeadm/GCP/AWS

## Deployment & Testing:
    * Multi-node cluster with a Single Master and Multiple worker
    * Setup using kubeadm tool or quick provision on GCP or AWS or AKS

## Hosting Production Applications:
    * High Availability Multi node cluster with multiple master nodes
    * Kubeadm or GCP or Kops on AWS or other supported platforms
    * Upto 5000 nodes
    * Upto 150,000 PODs in the cluster
    * Upto 300,000 Total Containers
    * Upto 100 PODs per Node

## Cloud or OnPrem ?
    * Use Kubeadm for on-prem
    * GKE for GCP
    * Kops for AWS
    * Azure Kubernetes Service(AKS) for Azure

## Storage
    * High Performace - SSD Backed Storage
    * Multiple Concurrent connections - Network based Storage
    * Persistent shared volumes for shared access across multiple PODs
    * Label nodes with specific disk types
    * Use Node Selectors to assign Applications to nodes with specific disk types

## Nodes
    * Virtual or Physical Machines
    * Minimum of 3 node cluster (size based on workload)
    * Master vs Worker nodes
    * Linux X86_64 Architecture
    * Master nodes can host workloads
    * Best practice is to not host workloads on Master nodes


# Choosing k8s Infrastructure:

### Minikube:
    * Deploys VMs
    * Single Node Cluster
### Kubeadm:
    * Requires VMs to be ready
    * Single/Multi Node Cluster

## For production purposes:
### Turnkey Solutions:
    * You provision VMs
    * You configure VMs
    * You use scripts to deploy cluster
    * Examples: 
        * k8s on AWS using Kops
        * Openshift
        * Cloud Foundry Container Runtime
        * VMware Cloud PKS
        * Vagrant
    
### Hosted Solutions:
    * Kubernetes-As-A-Service
    * Provider provisions VMs
    * Provider installs Kubernetes
    * Provider maintains VMs
    * Examples: 
        * Google Container Engine(GKE)
        * Openshift Online
        * Azure Kubernetes Service
        * Amazon Elastic Container Service for Kubernetes(EKS)
