#卸载旧版本
sudo apt-get remove docker docker-engine docker.io containerd runc
#更新 apt 包索引
sudo apt-get update
#安装 apt 依赖包，用于通过HTTPS来获取仓库
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
#添加 Docker 的官方 GPG 密钥
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

#使用以下指令设置稳定版仓库-----x86_64 / amd64
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

#安装 Docker Engine-Community
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

#测试安装
sudo docker run hello-world


