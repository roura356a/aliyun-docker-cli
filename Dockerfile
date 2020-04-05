FROM alpine

ARG version=3.0.37

RUN wget -q https://github.com/aliyun/aliyun-cli/releases/download/v${version}/aliyun-cli-linux-amd64.tar.gz -O - | tar -xzO aliyun > /aliyun
RUN chmod +x /tmp/aliyun

ENTRYPOINT ["/aliyun"]
