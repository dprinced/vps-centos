FROM centos:6.6
MAINTAINER TenxCloud <dev@tenxcloud.com>

# Install packages
RUN  yum -y install wget unzip zip bzip2 bzip2-devel tar
RUN mkdir -p /data
RUN mkdir -p /vhs
RUN  cp -a /etc /data/ && ln -s /data/etc /etc
RUN  cp -a /var /data/ && ln -s /data/var /var
RUN  cp -a /usr /data/ && ln -s /data/usr /usr
RUN  cp -a /home /data/ && ln -s /data/home /home
RUN  cp -a /vhs /data/ && ln -s /data/vhs /vhs
# Exposed ENV
ENV ROOT_PASS **Random**

# Add volumes for MySQL
VOLUME  ["/data"]

EXPOSE 80 3306 22
CMD ["/run.sh"]
