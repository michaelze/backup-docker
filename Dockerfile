FROM ubuntu:focal
MAINTAINER Michael Iseli <michael@crazymonkeys.de>

RUN apt-get update && apt-get install -y \
        mysql-client \
        duplicity \
        ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN ln -s /etc/ssl/certs/ISRG_Root_X1.pem /root/duplicity_cacert.pem

CMD ["/bin/bash"]
