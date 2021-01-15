FROM alpine:latest

COPY ./daily/* /etc/periodic/daily

RUN apk update && \
    apk upgrade && \
    apk add --no-cache mariadb-backup && \
    chmod a+x /etc/periodic/daily/*