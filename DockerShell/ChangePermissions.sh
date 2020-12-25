# 解决报错：Got permission denied while trying to connect to the Docker daemon socket at 
# unix:///var/run/docker.sock: Get http://%2Fvar%2Frun%2Fdocker.sock/v1.40/containers/json: 
# dial unix /var/run/docker.sock: connect: permission denied

#添加docker用户组
sudo groupadd docker

#将登录用户加入到docker用户组中
sudo gpasswd -a $USER docker

#更新用户组
newgrp docker

#测试docker命令是否可以使用sudo正常使用
docker ps
