FROM node:current-alpine

ENV REVIEWDOG_VERSION=v0.9.18

RUN wget -O - -q https://raw.githubusercontent.com/ducla5/reviewdog/master/install.sh| sh -s -- -b /usr/local/bin/ ${REVIEWDOG_VERSION}
RUN apk --no-cache add jq git

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
