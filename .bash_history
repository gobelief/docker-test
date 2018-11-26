dir
pwd
apt-get update 
apt-get upgrade 
apt-get update 
apt-get upgrade 
apt-get autoremove
uname -a
dir /etc/*release
cat /etc/*release
docker
sudo apt-get install     apt-transport-https     ca-certificates     curl     software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get install docker-ce
docker
docker commit mysql8 w1102769253/mysql8
docker push w1102769253/mysql8
docker login
docker push w1102769253/mysql8
docker exec -it mysql8 mysql -uroot -p
docker commit mysql8 w1102769253/mysql8
docker push w1102769253/mysql8
docker commit mysql8 w1102769253/mysql8
docker commit mysql8 w1102769253/mysql8:1
docker push w1102769253/mysql8:1
exit
docker pull mysql/mysql-server
df
df -H
docker run -d -name mysql8 -p 3306:3306 mysql/mysql-server
docker run -d --name mysql8 -p 3306:3306 mysql/mysql-server
docker logs mysql8
docker exec -it mysql8 mysql -uroot 
docker exec -it mysql8 mysql -uroot -p
docker exec -it mysql8 mysql
docker logs mysql8
docker exec -it mysql8 mysql -uroot -p
clear
python3
dir
whereis iptables
dir /usr/share/iptables
find / -name iptables
vim /usr/share/iptables/
iptables
iptables -h
iptables -l
iptables -h
iptables --L
iptables -L
vim /opt/redis.windows-service.conf 
docker search redis
docker run --name redis -p 6379:6379 -d redis
docker ps
docker rm redis
docker rm f3c507fbb8f7
docker stop redis
docker rm f3c507fbb8f7
docker run -v /opt/redis.windows-service.conf:/usr/local/etc/redis/redis.conf --name redis -p 6379:6379 -d redis
docker exec -it redis bash
docker ps
docker stop redis
docker rm redis
docker run -v /opt/redis.windows-service.conf:/usr/local/etc/redis/redis.conf --name redis -p 6379:6379 -d redis redis-server /usr/local/etc/redis/redis.conf
docker exec -it redis redis-cli
docker ps
docker logs redis
vim /opt/redis.windows-service.conf 
docker start redis
docker logs redis
vim /opt/redis.windows-service.conf 
docker logs redis
docker start redis
docker logs redis
vim /opt/redis.windows-service.conf 
docker start redis
docker logs redis
docker start redis
docker logs redis
vim /opt/redis.windows-service.conf 
docker stop redis
docker rm redis
docker run -v /opt/redis.windows-service.conf:/usr/local/etc/redis/redis.conf --name redis -p 6379:6379 -d redis 
docker exec -it bash 
docker exec -it redis bash 
docker stop redis
docker rm redis
docker run -v /opt/redis.windows-service.conf:/usr/local/etc/redis/redis.conf --name redis -p 6379:6379 -d redis 
docker stop redis
docker rm redis
docker run -v /opt/redis.windows-service.conf:/usr/local/etc/redis/redis.conf --name redis -p 6379:6379 -d redis redis-server /usr/local/etc/redis/redis.conf
touch /opt/redis_log.txt
vim /opt/redis.windows-service.conf 
docker stop redis
docker rm redis
docker run -v /opt/redis.windows-service.conf:/usr/local/etc/redis/redis.conf -v /opt/redis_log.txt:/tmp/redis_log.txt --name redis -p 6379:6379 -d redis redis-server /usr/local/etc/redis/redis.conf
docker logs redis
docker stop redis
vim /opt/redis.windows-service.conf 
docker run -v /opt/redis.windows-service.conf:/usr/local/etc/redis/redis.conf -v /opt/redis_log.txt:/data/redis_log.txt --name redis -p 6379:6379 -d redis redis-server /usr/local/etc/redis/redis.conf
docker ps -a
docker rm redis
docker run -v /opt/redis.windows-service.conf:/usr/local/etc/redis/redis.conf -v /opt/redis_log.txt:/data/redis_log.txt --name redis -p 6379:6379 -d redis redis-server /usr/local/etc/redis/redis.conf
docker logs redis
cat /opt/redis_log.txt 
docker exec -it redis redis-cli
docker ps
ufw .
ufw status
ufw allow 3306
ufw allow 6379
ufw status
cat /etc/ufw/ufw.conf 
cat /etc/ufw/user.rules 
ufw status;
utf
ufw
ufw --help
ufw reload
ufw enable
ufw status
ufw allow 22
ufw allow 80
ufw default deny
ufw status
docker version
python3
mkdir -p /etc/docker
cat /etc/docker/
cat /etc/docker/daemon.json 
cat /etc/docker/key.json 
dir
cd /opt/
dir
docker ps
docker search python
mkdir dockerfiles-test
cd dockerfiles-test/
dir
vim Dockerfile
vim requirements.txt
vim app.py
docker search friendlyhello
docker login --username=1148202451@qq.com registry.cn-hangzhou.aliyuncs.com
dir
docker build -t friendhello
docker build -t friendhello .
docker ps
docker images
docker run -p 4000:80 --name app -d friendhello
docker ps
curl localhost:4000
docker dir
docker ps
docker stop app
docker 
docker container ps
docker container ps --all
docker rm app
docker container ps --all
docker container 
docker container rm app
docker container 
docker container ps --all
docker ps -a
clear
sudo docker tag friendhello registry.cn-hangzhou.aliyuncs.com/wangf/app-py:1
sudo docker tag friendhello registry.cn-hangzhou.aliyuncs.com/wangf/app-py:v1
sudo docker tag friendhello registry.cn-hangzhou.aliyuncs.com/wangf/app-py
ping registry.cn-hangzhou.aliyuncs.com
sudo docker tag friendhello registry.cn-hangzhou.aliyuncs.com/wangf/app-py
docker tag friendhello registry.cn-hangzhou.aliyuncs.com/wangf/app-py
docker ps
docker images
docker images --help
docker rmi --help
docker rmi 314fac79c1d4:v1
docker rmi 314fac79c1d4
docker tag --help
docker rmi -f 314fac79c1d4:1
docker rmi -f registry.cn-hangzhou.aliyuncs.com/wangf/app-py:1
docker rmi -f registry.cn-hangzhou.aliyuncs.com/wangf/app-py
docker images
systemctl restart docker
docker push registry.cn-hangzhou.aliyuncs.com/wangf/app-py:v1
nfw 
nfw
ufw
ufw --help
ufw allow 2375
ufw reload
ufw status
curl localhost:2375
docker status
docker info
lsof -i :2375
vim /etc/docker/daemon.json 
systemctl restart docker
systemctl status docker
vim /etc/docker/daemon.json 
systemctl status docker
vim /etc/docker/daemon.json 
systemctl status docker
systemctl restart docker
systemctl status docker
systemctl daemon-reload
systemctl restart docker
systemctl status docker
vim /etc/docker/daemon.json 
systemctl restart docker
systemctl daemon-reload
systemctl restart docker
docker daemon -H tcp://0.0.0.0:2375 -H unix:///var/run/docker.sock
docker --help
docker info
docker -H tcp://0.0.0.0:2375
docker version
vim /etc/docker/daemon.json 
systemctl daemon-load
systemctl daemon-reload
systemctl restart docker
journalctl -xe
vim /etc/docker/daemon.json 
systemctl daemon-reload
systemctl restart docker
lsof -i :2375
vim /etc/docker/daemon.json 
systemctl daemon-reload
systemctl restart docker
docker ps
vim /etc/docker/daemon.json 
systemctl daemon-reload
systemctl restart docker
vim /etc/docker/daemon.json 
vim /etc/systemd/system/docker.service.conf
mkdir /etc/systemd/system/docker.service.d
vim /etc/systemd/system/docker.service.d/docker.conf
systemctl daemon-reload
systemctl restart docker
docker info
vim /etc/docker/daemon.json 
systemctl daemon-reload
systemctl restart docker
docker info
rm -rf /etc/systemd/system/docker.service.d/
docker info
systemctl daemon-reload
systemctl restart docker
docker info
rm -rf /etc/systemd/system/docker.service.d/
vim /etc/docker/daemon.json 
systemctl daemon-reload
systemctl restart docker
mkdir /etc/systemd/system/docker.service.d/
vim /etc/systemd/system/docker.service.d/docker.conf
systemctl daemon-reload
systemctl restart docker
systemctl status docker
vim /etc/systemd/system/docker.service.d/docker.conf
systemctl daemon-reload
systemctl restart docker
systemctl status docker
vim /etc/systemd/system/docker.service.d/docker.conf
systemctl daemon-reload
systemctl restart docker
systemctl status docker
rm -rf /etc/systemd/system/docker.service.d
vim /lib/systemd/system/docker.service
systemctl daemon-reload
systemctl restart docker
systemctl status docker
journalctl -xe
vim --help
mkdir /etc/systemd/system/docker.service.d/
vim /etc/systemd/system/docker.service.d/docker.conf
systemctl daemon-reload
systemctl restart docker
journalctl -xe
vim /etc/docker/daemon.json 
systemctl daemon-reload
systemctl restart docker
journalctl -xe
vim /etc/docker/daemon.json 
systemctl daemon-reload
systemctl restart docker
vim /etc/docker/daemon.json 
systemctl daemon-reload
systemctl restart docker
vim /etc/docker/daemon.json 
systemctl daemon-reload
systemctl restart docker
mkdir /var/docker
vim /etc/docker/daemon.json 
systemctl daemon-reload
mkdir /var/docker
systemctl restart docker
systemctl status docker.service
dir /opt/
dir /var/docker/
dir /var/
dir /var/log/
vim /etc/docker/daemon.json 
systemctl daemon-reload
systemctl restart docker
cfssl gencert -ca=ca.pem -ca-key=ca-key.pem -config=ca-config.json -profile=server server.json | cfssljson -bare server
dir /var/log/
ll /var/log/
ll /var/log/unattended-upgrades/
dockerd
touch /var/docker/server.pem /var/docker/serverkey.pem
systemctl daemon-reload
systemctl restart docker
dockerd
dir
cat client.key 
openssl req -new -x509 -text -key client.key -out client.cert
dir
cat client.cert 
dockerd
cp client.cert /var/docker/server.pem
cp client.key /var/docker/serverkey.pem
dockerd
vim /etc/docker/daemon.json 
dockerd
systemctl daemon-reload
systemctl restart docker
curl localhost:2376
docker info
vim /etc/docker/daemon.json 
systemctl daemon-reload
systemctl restart docker
docker info
vim /etc/docker/daemon.json 
systemctl daemon-reload
systemctl restart docker
docker info
vim /etc/docker/daemon.json 
systemctl daemon-reload
systemctl restart docker
docker info
dockerd
systemctl stop docker
dockerd
systemctl daemon-reload
systemctl restart docker
docker info
vim /etc/docker/daemon.json 
vim /etc/systemd/system/docker.service.d/docker.conf
systemctl daemon-reload
systemctl restart docker
dockerd
systemctl start docker
systemctl status docker.service
dockerd
vim /etc/systemd/system/docker.service.d/docker.conf
systemctl daemon-reload
systemctl restart docker
docker info
dockerd
rm -rf /var/run/docker.pid
dockerd
systemctl stop docker
dockerd
systemctl start docker
docker info
vim /var/lib/docker-engine/distribution_based_engine
vim /etc/docker/daemon.json 
journalctl -u docker.service
systemctl edit docker
cat /etc/systemd/system/docker.service.d/override.conf
systemctl edit docker.service
vim /etc/docker/daemon.json 
vim /etc/systemd/system/docker.service.d/docker.conf 
systemctl daemon-reload
systemctl restart docker
docker info
docker version
vim /etc/docker/daemon.json 
dir
openssl genrsa -aes256 -out ca-key.pem 4096
dir
vim -r /lib/systemd/system/docker.service 
vim  /lib/systemd/system/docker.service 
cat /etc/docker/daemon.json 
dir /etc/docker/
dir /var/docker/
vim  /lib/systemd/system/docker.service 
systemctl restart docker
systemctl daemon-reload
systemctl restart docker
dockerd
systemctl restart docker
journalctl -u docker.service
journalctl -ex docker.service
journalctl -xe docker.service
journalctl -xe 
journalctl --help 
journalctl -u docker.service |grep error
systemctl restart docker
journalctl -u docker.service |grep error
journalctl -u docker.service | tail -f 
vim /lib/systemd/system/docker.service 
vim /etc/docker/daemon.json 
systemctl daemon-reload
systemctl restart docker
systemctl status docker.service
vim /etc/systemd/system/docker.service.d/
vim /etc/systemd/system/docker.service.d/docker.conf 
rm -rf /etc/systemd/system/docker.service.d/docker.conf 
systemctl restart docker
systemctl daemon-reload
systemctl restart docker
systemctl status docker.service
vim /lib/systemd/system/docker.service 
systemctl daemon-reload
systemctl restart docker
systemctl status docker.service
vim /lib/systemd/system/docker.service 
systemctl daemon-reload
systemctl restart docker
cd /opt/
dir
vim cacert.sh 
bash cacert.sh 
dir
vim cacert.sh 
tr -d < cacert.sh >cacert-shell.sh 
tr -d < cacert.sh > cacert-shell.sh 
tr -d "\r" < cacert.sh > cacert-shell.sh 
dir
bash cacert-shell.sh 
dir
dir /etc/docker/certs.d
rm -rf /etc/docker/certs.d^
rm -rf /etc/docker/certs.d\^M
dir /etc/docker/certs.d
dir /etc/docker/
dir /etc/docker/certs.d\
dir /etc/docker/certs.d
vim /lib/systemd/system/docker.service 
cp /lib/systemd/system/docker.service /lib/systemd/system/docker.service.cp
vim /lib/systemd/system/docker.service 
systemctl daemon-reload
systemctl restart docker
systemctl status docker.service
systemctl stop docker.service
/usr/bin/dockerd --tlsverify --tlscacert=ca.pem --tlscert=server-cert.pem --tlskey=server-key.pem -H=0.0.0.0:2376 -H unix://
vim /lib/systemd/system/docker.service 
systemctl daemon-reload
systemctl restart docker
systemctl status docker.service
systemctl stop docker
/usr/bin/dockerd --tlsverify --tlscacert=ca-dp.pem --tlscert=server-cert-dp.pem --tlskey=server-key-dp.pem -H=0.0.0.0:2376 -H unix://
systemctl restart docker
systemctl stop docker
systemctl start docker
systemctl status docker.service
cp /lib/systemd/system/docker.service.cp /lib/systemd/system/docker.service
systemctl daemon-reload
systemctl restart docker
docker info
touch -p /etc/systemd/system/docker.service.d/docker.conf
touch --help
touch -c /etc/systemd/system/docker.service.d/docker.conf
vim /etc/systemd/system/docker.service.d/docker.conf
systemctl daemon-reload
systemctl restart docker
systemctl status docker.service
vim /etc/systemd/system/docker.service.d/docker.conf
systemctl daemon-reload
systemctl restart docker
cat /etc/systemd/system/docker.service.d/docker.conf 
/usr/bin/dockerd --tlsverify --tlscacert=ca-dp.pem --tlscert=server-cert-dp.pem --tlskey=server-key-dp.pem  -H=0.0.0.0:2376 -H unix://
/usr/bin/dockerd --tlsverify --tlscacert=ca-dp.pem --tlscert=server-cert-dp.pem --tlskey=server-key-dp.pem  -H=0.0.0.0:2376 -H unix:///var/lock/docker.lock
/usr/bin/dockerd --tlsverify --tlscacert=ca-dp.pem --tlscert=server-cert-dp.pem --tlskey=server-key-dp.pem  -H=0.0.0.0:2376 -H unix:///var/run/docker.sock
/usr/bin/dockerd --tlsverify --tlscacert=ca-dp.pem --tlscert=server-cert-dp.pem --tlskey=server-key-dp.pem  -H=0.0.0.0:2376 -H unix://
systemctl restart docker
journalctl -xe
vim /etc/docker/daemon.json 
systemctl daemon-reload
systemctl restart docker
dockerd
vim /etc/docker/daemon.json 
systemctl restart docker
systemctl daemon-reload
systemctl restart docker
systemctl status docker.service
journalctl -xe
systemctl daemon-reload
systemctl restart docker
dir /etc/docker/
dir /etc/docker/certs.d/
vim /etc/docker/daemon.json 
systemctl daemon-reload
systemctl restart docker
docker info
vim /etc/docker/daemon.json 
systemctl daemon-reload
systemctl restart docker
docker info
dir
docker --tlsverify --tlscacert /etc/docker/certs.d/ca-dp.pem --tlscert /etc/docker/certs.d/server-cert-dp.pe --tlskey=/etc/docker/certs.d/server-key-dp.pem -H tcp://localhost:2376 version 
docker --tlsverify --tlscacert /etc/docker/certs.d/ca-dp.pem --tlscert /etc/docker/certs.d/server-cert-dp.pem --tlskey=/etc/docker/certs.d/server-key-dp.pem -H tcp://localhost:2376 version 
docker --tlsverify --tlscacert /etc/docker/certs.d/ca-dp.pem --tlscert /etc/docker/certs.d/server-cert-dp.pem --tlskey=/etc/docker/certs.d/server-key-dp.pem -H tcp://127.0.0.1:2376 version 
docker --tlsverify --tlscacert=/etc/docker/certs.d/ca-dp.pem --tlscert=/etc/docker/certs.d/server-cert-dp.pem --tlskey=/etc/docker/certs.d/server-key-dp.pem -H tcp://127.0.0.1:2376 version 
docker --tlsverify --tlscacert=/opt/ca-dp.pem --tlscert=/opt/cert-dp.pem --tlskey=/opt/key-dp.pem -H tcp://127.0.0.1:2376 version 
vim /etc/profile
. /etc/profile
echo $DOCKER_CERT_PATH
docker --tlsverify --tlscacert=ca.pem --tlscert=cert.pem --tlskey=key.pem   -H=$HOST:2376 version
dir
docker --tlsverify --tlscacert=/opt/ca-dp.pem --tlscert=/opt/cert-dp.pem --tlskey=/opt/key-dp.pem   -H=$HOST:2376 version
docker --tlsverify --tlscacert=/opt/ca-dp.pem --tlscert=/opt/cert-dp.pem --tlskey=/opt/key-dp.pem   -H=127.0.0.1:2376 version
docker --tlsverify --tlscacert=/opt/ca-dp.pem --tlscert=/opt/cert-dp.pem --tlskey=/opt/key-dp.pem   -H=https://127.0.0.1:2376 version
docker --tlsverify --tlscacert=/opt/ca-dp.pem --tlscert=/opt/cert-dp.pem --tlskey=/opt/key-dp.pem   -H=127.0.0.1:2376 version
docker --tlsverify --tlscacert=/opt/ca-dp.pem --tlscert=/opt/cert-dp.pem --tlskey=/opt/key-dp.pem   -H 127.0.0.1:2376 version
docker --tlsverify --tlscacert=/opt/ca-dp.pem --tlscert=/opt/cert-dp.pem --tlskey=/opt/key-dp.pem   -H tcp://127.0.0.1:2376 version
docker --tlsverify --tlscacert=/opt/ca-dp.pem --tlscert=/opt/cert-dp.pem --tlskey=/opt/key-dp.pem   -H https://127.0.0.1:2376 version
docker --tlsverify --tlscacert=/opt/ca-dp.pem --tlscert=/opt/cert-dp.pem --tlskey=/opt/key-dp.pem   -H tcp://127.0.0.1:2376 version
curl localhost:2376
curl localhost:8
cd /opt/
dir
rm -rf *\r
dir
rm -rf ./*\r
dir
rm -rf ./*\\r
dir
rm -rf \r
dir
vim cacert.sh 
dir /etc/docker/certs.d/
curl localhost:2376
docker info
vim /etc/systemd/system/docker.service.d/docker.conf
dir /etc/docker/certs.d/
cat /etc/docker/certs.d/
cat /etc/docker/daemon.json 
dir
ll
cat extfile.cnf 
tar -zxvf tls-client-certs-dp.tar.gz 
dir
ll
ufw allow 2376
ufw reload
ll /etc/docker/certs.d/
