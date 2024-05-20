# Usa una imagen base de Alpine Linux
FROM alpine:latest

# Instala las dependencias necesarias: git, bash, curl, jq, unzip, y tfenv
RUN apk update && \
    apk add --no-cache \
    bash \
    git \
    curl \
    jq \
    unzip && \
    git clone https://github.com/tfutils/tfenv.git ~/.tfenv && \
    ln -s ~/.tfenv/bin/* /usr/local/bin && \
    tfenv install 1.8.2 && \
    tfenv use 1.8.2

ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
