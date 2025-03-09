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
   # Install Consul [https://developer.hashicorp.com/consul/docs/install#precompiled-binaries](https://developer.hashicorp.com/consul/docs/install#compiling-from-source)
   </ul>
   <hr>

 <h3> CREATE an Ansible role to Install Consul Server on VM </h3>
   <ul>
   mkdir /oculus-ansbile<br>
   mkdir /oculus-ansible/roles<br>
   cd /oculus-ansible/roles<br>
   ansible-galaxy init consulrole<br>
   mkdir /oculus-consul<br>
   cd /oculus-consul<br>
   git clone https://developer.hashicorp.com/consul/docs/install#precompiled-binaries
   </ul>
   <br>
<h2>DOCKER</h2>

<h3>Write Docker compose file to run a Docker registry latest and register it in the consul server created </h3>
   File docker-compose.yaml
   mkdir /oculus-docker
   cd /oculus-docker
   
