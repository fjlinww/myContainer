sudo swapoff -a
systemctl daemon-reload
systemctl restart kubelet
kubectl get pods -n kube-system
