FROM lsiobase/alpine:3.10

RUN set -xe && \
    apk add --no-cache postfix cyrus-sasl-plain && \
    postconf -e 'mynetworks_style=subnet' && \
    postconf -e 'maillog_file=/dev/stdout'

COPY root/ /

EXPOSE 25
