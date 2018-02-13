FROM debian
MAINTAINER Lasse Nielsen (lasse.nielsen.dk@gmail.com)
COPY init.sh /root/init.sh
RUN chmod a+x /root/init.sh
RUN /root/init.sh

