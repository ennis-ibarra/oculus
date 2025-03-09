# oculus

ANSIBLE ===========================

1. CREATE a Centos-Stream-8 VM
   https://mirrors.centos.org/mirrorlist?path=/10-stream/BaseOS/x86_64/iso/CentOS-Stream-10-latest-x86_64-dvd1.iso&redirect=1&protocol=https
   yum groupinstall "Development Tools"
   yum install git
   yum install perl
   yum install docker-compose-plugin
   yum install epel-release
   yum install ansible -y
   # Install Consul [https://developer.hashicorp.com/consul/docs/install#precompiled-binaries](https://developer.hashicorp.com/consul/docs/install#compiling-from-source)
      
3. CREATE an Ansible role to Install Consul Server on VM
   mkdir /oculus-ansbile
   mkdir /oculus-ansible/roles
   cd /oculus-ansible/roles
   ansible-galaxy init consulrole
   mkdir /oculus-consul
   cd /oculus-consul
   git clone https://developer.hashicorp.com/consul/docs/install#precompiled-binaries
   
   
DOCKER ===========================

3. Docker compose file to run a Docker registry latest and register it in the consul server created
   File docker-compose
   mkdir /oculus-docker
   cd /oculus-docker
   
