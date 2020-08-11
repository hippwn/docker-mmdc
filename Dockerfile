FROM node:alpine

WORKDIR /data

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=1 \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

RUN apk add chromium \
    && npm install --global mermaid.cli



ENTRYPOINT ["mmdc"]