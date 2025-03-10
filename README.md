# oculus

<h2> ANSIBLE </h2> 
<hr> 

<h3> CREATE a Centos-Stream-8 VM </h3>

   <ul>
   https://mirrors.centos.org/mirrorlist?path=/10-stream/BaseOS/x86_64/iso/CentOS-Stream-10-latest-x86_64-dvd1.iso <br>
   yum groupinstall "Development Tools" <br>
   yum install git <br>
   yum install perl <br>
   yum install docker-compose-plugin <br>
   yum install epel-release <br>
   yum install ansible -y <br>
   yum install screen -y <br>
   </ul>
   <hr>

 <h3> CREATE an Ansible role to Install Consul Server on VM </h3>
   <ul>
   mkdir /oculus-ansbile<br>
   mkdir /oculus-ansible/roles<br>
   cd /oculus-ansible/roles<br>
   ansible-galaxy init consulrole<br>
   mkdir /oculus-ansible/tasks<br>
   cd /oculus-tasks<br>
   # REFERENCE https://developer.hashicorp.com/consul/docs/install#precompiled-binaries <be>
   # install-consul.yaml <br>
   # playbook.yaml  <br>
   ansible-playbook playbook.yaml <br>
   consul version <br>
   consul start -dev <br>
   screen <br>
     consul agent -dev (detach) <br>
   screen -ls <br>
   </ul>
   <br>
<h2>DOCKER</h2>

<h3>Write Docker compose file to run a Docker registry latest and register it in the consul server created </h3>
   <ul>
   mkdir /oculus-docker <br>
   cd /oculus-docker <br>
   # File docker-compose.yaml <br>
   docker compose up -d <br>
   # File docker.json <br>
   consul agent -dev -enable-script-checks -config-dir=/oculus-consul/services <br>
   # File 
   </ul>ul
   
