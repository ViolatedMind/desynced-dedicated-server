FROM steamcmd/steamcmd:ubuntu-24

WORKDIR /desynced

RUN apt update \
 && apt install -y --no-install-recommends --no-install-suggests wine xvfb \
 && apt clean \
 && rm -rf /var/lib/apt/lists/*

ENV INSTALL_PATH="/desynced/server" \
    WORLD_NAME="World1" \
    SERVER_NAME="Desynced Dockerized server" \
    MAX_PLAYERS="10" \
    VISIBILITY="private" \
    RUN_WITHOUT_PLAYERS="false" \
    RESOURCE_RICHNESS="4" \
    BLIGHT_THRESHOLD="0.1" \
    PLATEAU_LEVEL="0.1" \
    PEACEFUL_MODE="2"

COPY server.sh ./server.sh

ENTRYPOINT ["./server.sh"]
