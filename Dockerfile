FROM ubuntu:18.04
ADD . /
RUN apt-get update
RUN apt-get install -y cmake git erlang xsltproc docbook-xsl unzip iproute2 libc-ares-dev libc-ares2 uuid-dev openssl libssl-dev gcc g++ make wget vim net-tools iputils-ping openssh-server
CMD ["sh","config.sh"]

