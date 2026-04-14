FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    wget \
    dnsutils \
    iputils-ping \
    iproute2 \
    net-tools \
    mtr-tiny \
    traceroute \
    netcat-openbsd \
    nmap \
    tcpdump \
    whois \
    telnet \
    ethtool \
    iperf3 \
    iftop \
    nftables \
    iptables \
    bridge-utils \
    vlan \
    arping \
    socat \
    openssh-client \
    openssl \
    lsof \
    procps \
    jq \
    tzdata \
 && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
