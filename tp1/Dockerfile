FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    wget \
    vim \
    nano \
    iputils-ping \
    net-tools \
    git \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . .

CMD ["bash"]
