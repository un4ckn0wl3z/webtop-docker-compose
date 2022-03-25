#!/bin/bash

docker run --privileged -d \
  --name=webtop \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Bangkok \
  -p 30099:3000 \
  -v $(pwd)/config:/config \
  --restart unless-stopped \
  lscr.io/linuxserver/webtop:ubuntu-mate
