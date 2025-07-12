FROM alpine

RUN apk add --no-cache jq

RUN wget https://github.com/kubernetes-sigs/cri-tools/releases/download/v1.33.0/crictl-v1.33.0-linux-amd64.tar.gz && \
    tar xzf crictl-v1.33.0-linux-amd64.tar.gz && \
    mv crictl /usr/bin && \
    rm crictl-v1.33.0-linux-amd64.tar.gz
