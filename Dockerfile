FROM alpine:3.8.4

MAINTAINER nuits.jp@live.jp

RUN apk update && apk upgrade \
      && apk add pdftk

RUN mkdir /work
WORKDIR /work
VOLUME ["/work"]

ENTRYPOINT ["pdftk"]