FROM centos:centos7

RUN yum -y update && yum -y upgrade
RUN yum -y install wget \
 libtool autoconf automake make \
 rpm-build 
# from BuildRequires of the spec file
# >= 2.4.3
RUN yum -y install libarchive-devel python

RUN wget https://github.com/singularityware/singularity/releases/download/2.4.3/singularity-2.4.3.tar.gz
RUN (rpmbuild -ta singularity-2.4.3.tar.gz ) |tee  build.log
RUN tar czvf built.tgz build.log root/rpmbuild/{RPMS,SRPMS}
