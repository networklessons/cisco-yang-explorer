FROM alpine:3.9

# Install required packages
RUN apk add \
gcc \
git \
python \
python-dev \
py-pip \
py-crypto \
py-lxml \
py-virtualenv && \
pip install pyang graphviz

# Install Cisco Yang Explorer
WORKDIR /root
RUN git clone https://github.com/CiscoDevNet/yang-explorer.git && \
cd yang-explorer && \
sh setup.sh && \
sed -i 's/bash/sh/g' start.sh && \
sed -i -e 's/HOST=\x27localhost\x27/HOST=$HOSTNAME/g' start.sh

CMD ["sh", "/root/yang-explorer/start.sh"]