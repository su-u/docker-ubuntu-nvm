FROM ubuntu:18.04

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y \
    curl git build-essential libssl-dev curl && \
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*