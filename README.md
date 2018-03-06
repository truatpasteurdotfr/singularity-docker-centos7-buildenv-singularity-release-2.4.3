# singularity-docker-centos7-buildenv-singularity-release-2.4.3
centos7 build env for singularity/release-2.4.3

example Dockerfile provided for convenience.

Running without installation:
```
export OUT=`mktemp -d` && echo building in ${OUT} && \
singularity run -H ${OUT} shub://truatpasteurdotfr/singularity-docker-centos7-buildenv-singularity-release-2.4.3
```
Building:
```
sudo singularity build singularity-docker-centos7-buildenv-singularity-release-2.4.3.simg  Singularity
```
Download and rename:
```
singularity pull --name "singularity-docker-centos7-buildenv-singularity-release-2.4.3" shub://truatpasteurdotfr/singularity-docker-centos7-buildenv-singularity-release-2.4.3
```
Running with a separate $HOME 
```
mkdir -p  ~/singularity.d/home/singularity-docker-centos7-buildenv-singularity-release-2.4.3
singularity run -H  ~/singularity.d/home/singularity-docker-centos7-buildenv-singularity-release-2.4.3 singularity-docker-centos7-buildenv-singularity-release-2.4.3.simg
```
