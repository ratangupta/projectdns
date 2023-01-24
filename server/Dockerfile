FROM ubuntu:bionic

RUN apt-get update \
  && apt-get install -y \
  bind9 \
  bind9utils \
  bind9-doc

# Enable IPv4
RUN sed -i 's/OPTIONS=.*/OPTIONS="-4 -u bind"/' /etc/default/bind9

# Run bind9
RUN service bind9 start

# Copy configuration files
COPY named.conf.options /etc/bind/
COPY named.conf.local /etc/bind/
COPY db.project.com /etc/bind/zones/
COPY db.10.128 /etc/bind/zones/

# Expose port
EXPOSE 953
EXPOSE 953/udp
EXPOSE 53
EXPOSE 53/udp

# Create entrypoint
ENTRYPOINT service bind9 restart && /bin/bash

