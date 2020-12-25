# Introduction
A shell file to install docker and k8s on Ubuntu system. 

# How to use

## DockerShell

- Run [**INSTALLDOCKER.sh**](https://github.com/fjlinww/myContainer/blob/master/DockerShell/INSTALLDOCKER.sh) to install docker. 
- Run [**INSTALLCOMPOSE.sh**](https://github.com/fjlinww/myContainer/blob/master/DockerShell/INSTALLCOMPOSE.sh) to install docker-compose. 
- Run [**ChangePermissions.sh**](https://github.com/fjlinww/myContainer/blob/master/DockerShell/ChangePermissions.sh) to solve the problem of "permission deny" when run the command "docker". 

## K8Sshell

- Run [**GetK8sImages.sh**](https://github.com/fjlinww/myContainer/blob/master/K8Sshell/GetK8sImages.sh) to download docker images from Aliyun. 
- Run [**RunAfterKubeadmInit.sh**](https://github.com/fjlinww/myContainer/blob/master/K8Sshell/RunAfterKubeadmInit.sh) to save profiles after execute the command 'kubeadm init'. 
- To install Network Plugin, try bridge or flannel. 

