# BioInformatics Docker Images
(spawned from very useful talks at the bioinformatics coffee club at Cardiff University)

## Useful Links:
 * [github-site](https://github.com/sglim2/docker-bio) for source
 * [Docker Hub](https://hub.docker.com/u/sglim2/) for containers
 * [docker-machine](https://docs.docker.com/machine/) docker-machine documentation


## Dockerfiles
 1. The respective license of the applications contained within the docker container can be found in /usr/share/licenses/ folder of that container. 
 2. Most (all) dockerfiles inherit our base image sglim2/centos7, which in turn is based on the official centos:latest image.
 3. Many of the images will download 3rd party software. While we try to verify the authenticity of such software, this is not easily achieved, particularly when the 3rd party software itself pulls in dependencies.
 4. Many images will install software from source. To keep the images light-weight, where possible the dockerfile will download the software, verify it, build it, and remove the source again within a single RUN instruction. 
 5. In certain usage scenarios (in particular running on a linux host and bind-mounting a folder), writing to the mounted folder under default usage of the container, will write the files to the host as root-owned. This is somewhat undesirable. To overcome this, a package called gosu is used in all our images, which will allow the files to be written to the host as any desired user. To do this you will need to set extra environment variables when running the container - further usage instructions are defined below.
 
## A Note on Bind-Mounting
It is often desirable mount a local folder inside the docker container (bind-mount). This is easiy acheived using the -v option to the 'docker run' command, for example:
```bash
docker run -it -v $PWD:/mnt/host sglim2/centos7:latest bash
``` 
Here we assume a linux host, starting the latest sglim2/centos7 container, and bind-mounting the current working directory to the path /mnt/host within the container. The problem with this is that our default user within the container is root, and therefore any files/folders created under the new mount point will be owned by root user (both within the container and on the host). This is sometimes undersirable, instead you may want the new files/folders to be owned by a different user, likely the host user. To deal with this, our containers have an entrypoint which will optionally create a new user within the container, and then run under that user within the container. To create this user we just need to pass two environment variables to the docker run command:
```bash
docker run -it -v $PWD:/mnt/host -e HOST_USER_ID=`id -u $USER` -e HOST_GROUP_ID=`id -g $USER`  sglim2/centos7:latest bash
```
Here the environment variables 'HOST_USER_ID' and 'HOST_GROUP_ID' are passed to the container (respectively holding the uid and gid of the desired user), the entrypoint recognises this and deals with it accordingly. Now instead of the container starting under the root user, it will start under a user with uid and gid specified at the command line. Now any files/folders written to the mount point will be written as the desired user.

Note, this behaviour is only related to linux hosts. Windows and Mac deal with correcting permissions on bind-mounted files automatically.

If the two environment variables are not passed to the docker container on startup, then the container user defaults to root.

## Provision Containers on Openstack using docker-machine
```docker-machine``` is a package provided by docker that lets you install Docker Engine on virtual hosts, and manage those hosts using docker-machine commands. Traditionally it was used to provision docker containers on Mac and Windows desktops. Docker-machine would initiate a VM on your desktop and run the docker containers within that VM. (Although recent updates to docker allows containers to run natively on Mac and Windows desktops without the need for VMs).

One can use docker-machine to auto-provision a Virtual Machine on OpenStack, and in turn auto-provision a docker-engine on that VM.

Before we run docker-machine and auto-provision our VM and container, we need to tell docker how to connect to our openstack cluster. You will need to source your ```keystone``` credentials:
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



