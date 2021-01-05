# 切换到root，否则curl那条指令会报错，尝试用sudo也不行
su root
apt-get update && apt-get install -y apt-transport-https
curl https://mirrors.aliyun.com/kubernetes/apt/doc/apt-key.gpg | apt-key add - 
cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb https://mirrors.aliyun.com/kubernetes/apt/ kubernetes-xenial main
EOF  
apt-get update

# 切换回普通用户
exit
sudo apt-get install -y kubelet kubernetes-cni=0.8.7-00 kubeadm

# 暂时关闭SWAP
sudo swapoff -a
