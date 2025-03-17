# oculus - TECHNICAL TASKS

<h2> ANSIBLE </h2> 
<hr> 

<h3> TASK:  CREATE a Centos-Stream-8 VM </h3>

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

 <h3> TASK: CREATE an Ansible role to Install Consul Server on VM </h3>
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

<h3>TASK: Write Docker compose file to run a Docker registry latest and register it in the consul server created </h3>
   <ul>
   mkdir /oculus-docker <br>
   cd /oculus-docker <br>
   # File docker-compose.yaml <br>
   docker compose up -d <br>
   # File docker.json <br>
   consul agent -dev -enable-script-checks -config-dir=/oculus-consul/services <br>
   # Create declarative configuration for Kong and register as a service (use Consul) <br>   
   # File kong.json <br>
   # Write a Dockerfile to build a Kong container with Declarative Configuration (DB-less mode) <br>
   # Follow the 12-factor app methodology <br>
   https://12factor.net/ <br>
      <ol>
         <li> Codebase </li>
         <li> Dependencies </li>
         <li> Config </li>
         <li> Backing services </li>
         <li> Build, release, run </li>
         <li> Processes </li>
         <li> Port binding </li>
         <li> Concurrency </li>
         <li> Disposability </li>
         <li> Dev/Prod parity</li>
         <li> Logs </li>
         <li> Admin Processes </li>
      </ol> <br>
      <i><b>NOTE:</b> Analysis of 12-factor against the YAML to deploy Kong, with fair evaluation and room to enhance the proposal, IMAGE: Kong12_AI-analysis.png </i> <br>
   </ul><br>

<h2>Gitlab CI/CD</h2>

<h3>TASK: Write and Example of Gitlab CI/CD pipeline with stages: </h3>
   <ul>
   <li> 1. Build 
     Uses docker:24.0 image with Docker-in-Docker (dind) service --pull flag ensures base image is actual.  Build arguments and tags use CI_COMMIT_SHORT_SHA for traceability Artifacts preserve the declarative config file (kong.yml)<br>
  <li> 2. Push 
     Tags images with both commit SHA and latest Uses CI_REGISTRY_IMAGE for registry path consistency follows BPs to include explicit success/failure messaging<br>
  <li> 3. Deploy 
      Verifies service availability with CURL check uses temporary alpine image with Docker installed, includes port mapping for Kong's admin API<br>
      - Build the Docker image for Kong with declarative configuration<br>
      - Push the image to the docker regitry <br>
      - Install the Image <br><br>
     <I> Included gitalb-CICD yaml file for gitlab, still debugging it, but base is correct </i>
   </ul>
   
