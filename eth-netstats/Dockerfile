FROM mhart/alpine-node

RUN \
  apk add --update git && \
   git clone https://github.com/cubedro/eth-netstats && \
   cd /eth-netstats && npm install && \
   npm install -g grunt-cli && \
   grunt

WORKDIR /eth-netstats

CMD ["npm", "start"]
