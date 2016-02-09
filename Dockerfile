FROM centos:6.6
MAINTAINER Gustavo Garcia <gustavogb@gmail..com>

RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
RUN yum groupinstall -y "Development Tools" && yum clean all && yum install -y tar

RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.30.2/install.sh | bash

RUN ["/bin/bash", "-login", "-c", "nvm install 0.10"]
RUN ["/bin/bash", "-login", "-c", "nvm install 0.12"]
RUN ["/bin/bash", "-login", "-c", "nvm install 4.0"]
RUN ["/bin/bash", "-login", "-c", "nvm install 5.0"]
RUN ["/bin/bash", "-login", "-c", "nvm use 5.0"]

CMD ["/bin/bash"]
