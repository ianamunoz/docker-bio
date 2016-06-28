# BioInformatics Docker Images
(spawned from very useful talks at the bioinformatics coffee club at Cardiff University)

## Useful Links:
 * [github-site](https://github.com/sglim2/docker-bio) for source
 * [Docker Hub](https://hub.docker.com/u/sglim2/) for containers
 * [docker-machine](https://docs.docker.com/machine/) docker-machine documentation


## Provision Containers on Openstack using docker-machine
```docker-machine``` is a package provided by docker that lets you install Docker 
Engine on virtual hosts, and manage those hosts using docker-machine commands. 
Traditionally it was used to provision docker containers on Mac and Windows 
desktops. Docker-machine would initiate a VM on your desktop and run the docker 
containers within that VM. (Although recent updates to docker allows containers 
to run natively on Mac and Windows desktops without the need for VMs).

One can use docker-machine to auto-provision a Virtual Machine on OpenStack, 
and in turn auto-provision a docker-engine on that VM.

Before we run docker-machine and auto-provision our VM and container, we need to
tell docker how to connect to our openstack cluster. You will need to source your
```keystone``` credentials:
```
export OS_AUTH_URL=http://[keystone-endpoint]:5000/v2.0
export OS_TENANT_NAME=[project-name]
export OS_USERNAME=[username]
export OS_PASSWORD=[password]
```
For persistence, place this list in to your login script, i.e. ~/.profile


Using docker-machine on your desktop, run the following command
```bash
docker-machine create -d openstack \
               --openstack-flavor-id [flavor-uuid] \
               --openstack-image-id  [image-uuid] \
               --openstack-net-name  [private-network-name] \
               --openstack-floatingip-pool [public-network-pool-name] \
               --openstack-ssh-user [openstack-username] \
               --openstack-sec-groups [security-group=name] \
               [VM-name]
eval $(docker-machine env [VM-name])
``` 
All ```UUID```'s can be obtained from the horizon interface of your openstack cluster.



