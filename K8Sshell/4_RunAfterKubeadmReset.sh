# master节点执行kubeadm reset后的手动操作

sudo kubeadm reset  #enter 'y' to confirm
iptables -F && iptables -t nat -F && iptables -t mangle -F && iptables -X  #run as root
sudo rm -rf $HOME/.kube/*

systemctl stop kubelet
systemctl stop docker
sudo rm -rf /var/lib/cni/*
sudo rm -rf /var/lib/kubelet/*
sudo rm -rf /etc/cni/*

sudo ifconfig cni0 down  #如果有
sudo ip link delete cni0 #如果有

ifconfig flannel.1 down  #如果有
ip link delete flannel.1 #如果有

sudo ifconfig docker0 down
systemctl start docker
