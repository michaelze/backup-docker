FROM ubuntu:trusty
MAINTAINER Michael Zender <michael@crazymonkeys.de>

RUN DEBIAN_FRONTEND=noninteractive apt-get update -q
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-client duplicity
RUN DEBIAN_FRONTEND=noninteractive apt-get clean

CMD ["/bin/bash"]
