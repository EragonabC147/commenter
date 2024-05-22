# Usa una imagen base de Alpine Linux
FROM alpine:latest

# Instala las dependencias necesarias: git, bash, curl, jq, unzip, y tfenv
RUN apk update && \
    apk add --no-cache \
    bash \
    git \
    curl \
    jq \
    unzip

RUN git clone https://github.com/tfutils/tfenv.git ~/.tfenv && \
    ln -s ~/.tfenv/bin/* /usr/local/bin

# Set the working directory
WORKDIR /app

# Copy the script into the container
COPY entrypoint.sh .

# Ensure the script is executable
RUN chmod +x entrypoint.sh

# Run the script
ENTRYPOINT ["./entrypoint.sh"]
