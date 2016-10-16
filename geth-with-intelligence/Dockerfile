FROM mhart/alpine-node

RUN \
  apk add --update go git make gcc musl-dev perl    && \
  git clone https://github.com/ethereum/go-ethereum && \
  (cd go-ethereum && make geth)                     && \
  cp go-ethereum/build/bin/geth /geth               && \
  cd /root && git clone https://github.com/cubedro/eth-net-intelligence-api && \
  (cd eth-net-intelligence-api && npm install)                          && \
  npm install -g pm2                                                    && \
  apk del go git make gcc musl-dev                                      && \
  rm -rf /go-ethereum && rm -rf /var/cache/apk/*

EXPOSE 8545 30303

ADD start.sh /root/start.sh
ADD app.json /root/eth-net-intelligence-api/app.json
RUN chmod +x /root/start.sh

ENTRYPOINT /root/start.sh
