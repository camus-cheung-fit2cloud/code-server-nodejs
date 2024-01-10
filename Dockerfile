FROM linuxserver/code-server

RUN \
  echo "**** Install Node.js ****" && \
  apt-get update && \
  curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash - && \
  apt-get install -y nodejs wget sudo

RUN \
  echo "**** Clean Up ****" && \
  apt-get clean && \
  rm -rf /config/* /tmp/* /var/lib/apt/lists/* /var/tmp/*
