FROM debian:latest

RUN sed -i 's/$/ contrib non-free/' /etc/apt/sources.list && apt-get update

RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
    apache2-utils \
    arping \
    atop \
    bash \
    blktrace \
    bridge-utils \
    ca-certificates \
    curl \
    dnsutils \
    dstat \
    duplicity \
    ethtool \
    file \
    git \
    host \
    htop \
    iftop \
    iotop \
    iperf \
    iproute2 \
    jid \
    jq \
    less \
    lftp \
    lsof \
    ltrace \
    mariadb-client \
    manpages \
    man-db \
    mtr-tiny \
    netcat \
    net-tools \
    nicstat \
    ngrep \
    nmap \
    openssl \
    openssh-client \
    postgresql-client \
    procps \
    python3 \
    rclone \
    restic \
    rsync \
    sg3-utils \
    siege \
    socat \
    strace \
    stress \
    stress-ng \
    telnet \
    tcpdump \
    traceroute \
    vim \
    wget \
    && apt-get clean all && rm -rf /var/lib/apt/lists/*

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/bin/bash"]
