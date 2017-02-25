FROM ubuntu:xenial
MAINTAINER Michael Zender <michael@crazymonkeys.de>

RUN apt-get update && apt-get install -y \
	mysql-client \
	duplicity \
	ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN ln -s /etc/ssl/certs/DST_Root_CA_X3.pem /root/duplicity_cacert.pem

CMD ["/bin/bash"]
