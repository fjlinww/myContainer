# 先执行命令kubeadm config images list，再执行以下脚本
# 执行脚本如果遇到报错GetK8sImages.sh: 1: GetK8sImages.sh: Syntax error: "(" unexpected
# 解决办法 sudo dpkg-reconfigure dash  选择no，将默认的shell改为bash

images=(  # 下面的镜像应该去除"k8s.gcr.io/"的前缀，版本换成kubeadm config images list获取到的版本
    kube-apiserver:v1.20.1
    kube-controller-manager:v1.20.1
    kube-scheduler:v1.20.1
    kube-proxy:v1.20.1
    pause:3.2
    etcd:3.4.13-0
    coredns:1.7.0
)

for imageName in ${images[@]} ; do
    docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName
    docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName k8s.gcr.io/$imageName
    docker rmi registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName
done
