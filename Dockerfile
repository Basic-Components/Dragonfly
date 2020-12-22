# FROM --platform=$TARGETPLATFORM golang:1.15-alpine as build_bin
FROM golang:1.15-alpine as build_bin
WORKDIR /go/src/github.com/dragonflyoss/Dragonfly
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN apk --no-cache add bash make gcc libc-dev git
COPY . /go/src/github.com/dragonflyoss/Dragonfly
ARG GOPROXY
RUN make build-client && make install-client

#FROM --platform=$TARGETPLATFORM alpine:3.12.2 as build_img
FROM alpine:3.12.2 as build_img
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN apk update && apk --no-cache add tzdata ca-certificates bash && rm -rf /var/cache/apk/*
COPY --from=build_bin /opt/dragonfly/df-client /opt/dragonfly/df-client
EXPOSE 65001
ENTRYPOINT [ "/opt/dragonfly/df-client/dfdaemon" ]
