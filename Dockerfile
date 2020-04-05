FROM ubuntu

ARG version=3.0.37

RUN apt-get update && apt-get install -y apt-transport-https wget \
    && wget -q https://github.com/aliyun/aliyun-cli/releases/download/v${version}/aliyun-cli-linux-${version}-amd64.tgz -O /opt/aliyun.tgz \
    && tar zxvf /opt/aliyun.tgz && rm /opt/aliyun.tgz && chmod +x aliyun && mv aliyun /usr/local/bin/aliyun

ENTRYPOINT ["aliyun"]
