bowtie Usage
============

The standard example
--------------------
A simple example where a container is started, you will attach manually, and run some excaple code.
```bash
docker run -itd sglim2/bowtie-1.1.2
docker ps # find the container code_name
docker attach <code_name>
```
Once attached to the container, you may run the example:
```bash
bowtie e_coli /software/bowtie/v1.1.2/reads/e_coli_1000.fq
```
To leave the container, type ```exit``` or ```CTRL-d```. If you wish to destroy the container:
```bash
docker rm <code_name>
```
and the container will be destroyed and all data within it will be lost.


