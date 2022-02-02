FROM alpine:latest

# install minidlna
RUN apk --no-cache add minidlna

# Add config file
ADD minidlna.conf /etc/minidlna.conf

# Copy entrypoint
COPY entrypoint.sh /usr/bin/

EXPOSE 1900/udp
EXPOSE 8200

ENTRYPOINT [ "entrypoint.sh" ]

HEALTHCHECK CMD wget --spider http://127.0.0.1:8200 || exit 1
