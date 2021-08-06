# Master Components
    * kube-apiserver
    * node-controller
    * replica-controller
    * etcd

    kube-scheduler, kube-controller-manager
    
# Worker Components
    * kubelet
    * kube-proxy
    * Container Runtime


# Steps using kubeadm
```
    1. Set up 3 VMs. Designate one as master and others as worker.
    2. Install container runtime on all the nodes. [docker]
    3. Install kubeadm tool on all the nodes.
    4. Initialize master server. 
    5. Make sure Pod Networking is in place. [flannel, weaveworks]
    6. Join worker nodes to master.
```


# Reference docs:    
    `https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/`

    ```
        kubeadm version -o short
        kubelet --version
    ```

    `https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/`
    `https://kubernetes.io/docs/reference/setup-tools/kubeadm/kubeadm-init/`

    ```
        kubeadm init
        kubeadm init --pod-network-cidr 10.0.0.0/16 --apiserver-advertise-address=<masterip>
        kubeadm token create --help
        kubeadm token create --print-join-command 
        kubeadm reset 
    ```