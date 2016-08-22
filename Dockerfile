FROM centos:6.6
MAINTAINER TenxCloud <dev@tenxcloud.com>

# Install packages
RUN  yum -y install wget unzip zip bzip2 bzip2-devel tar

# Exposed ENV
ENV ENV ROOT_PASS **Random**

# Add volumes for MySQL
VOLUME  ["/"]

EXPOSE 80 3306 22
CMD echo hello world
