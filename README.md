# oculus

ANSIBLE ===========================

1. CREATE a Centos-Stream-8 VM
   https://mirrors.centos.org/mirrorlist?path=/10-stream/BaseOS/x86_64/iso/CentOS-Stream-10-latest-x86_64-dvd1.iso&redirect=1&protocol=https
      
2. CREATE an Ansible role to Install Consul Server on VM
   mkdir /oculus-ansbile
   mkdir /oculus-ansible/roles
   cd /oculus-ansible/roles
   ansible-galaxy init consulrole
   
DOCKER ===========================

3. Docker compose file to run a Docker registry latest and register it in the consul server crated
  
