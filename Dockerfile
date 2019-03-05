FROM alpine:3.9

# Install required packages
RUN apk add \
gcc \
git \
python \
python-dev \
py-pip \
py-crypto \
py-lxml

# Install Cisco Yang Explorer
WORKDIR /root
RUN git clone https://github.com/CiscoDevNet/yang-explorer.git && \
cd yang-explorer && \
sh setup.sh -y && \
sed -i 's/bash/sh/g' start.sh

CMD ["sh", "/root/yang-explorer/start.sh"]