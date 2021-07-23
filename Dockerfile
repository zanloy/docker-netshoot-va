FROM nicolaka/netshoot:latest

RUN apk --no-cache add bash ca-certificates curl git jq netcat-openbsd openssh

COPY ./certs/* /usr/local/share/ca-certificates/

RUN update-ca-certificates
