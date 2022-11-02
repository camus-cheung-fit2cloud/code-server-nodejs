FROM linuxserver/code-server

RUN \
  echo "**** install nodejs ****" && \
  apt-get update && \
  curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash - && \
  apt-get install -y \
    nodejs \
    wget \
    sudo && \

  echo "**** clean up ****" && \
  apt-get clean && \
  rm -rf \
    /config/* \
    /tmp/* \
    /var/lib/apt/lists/* \
    /var/tmp/*