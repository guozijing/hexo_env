FROM ubuntu:18.04

ENV HTTP_PROXY=$HTTP_PROXY
ENV HTTPS_PROXY=$HTTPS_PROXY
ENV http_proxy=$HTTP_PROXY
ENV https_proxy=$HTTPS_PROXY
RUN echo "Acquire {\n  HTTP::proxy \"$HTTP_PROXY/\"; \n  HTTPS::proxy \"$HTTPS_PROXY/\";\n}" > /etc/apt/apt.conf.d/proxy.conf
RUN apt update && apt install -y git wget
RUN cd /opt && \
    wget https://nodejs.org/dist/v12.16.2/node-v12.16.2-linux-x64.tar.gz && \
    tar -xvzf node-v12.16.2-linux-x64.tar.gz && \
    mv node-v12.16.2-linux-x64 node && \
    cd /usr/local/bin && \
    ln -s /opt/node/bin/* . && \
    rm -f /opt/node-v12.16.2-linux-x64.tar.gz
RUN npm config set proxy=$HTTP_PROXY
RUN npm install -g hexo-cli@v1.1.0
RUN cd /usr/local/bin && \
    ln -s /opt/node/lib/node_modules/hexo-cli/bin/* .
RUN git config --global user.email "18500213692@163.com" && \
    git config --global user.name "guozijing"
ENV HTTP_PROXY=
ENV HTTPS_PROXY=
ENV http_proxy=
ENV https_proxy=

ENTRYPOINT ["/bin/bash"]
