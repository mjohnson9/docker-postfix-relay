FROM lsiobase/alpine:3.10

RUN apk add postfix && \
    postconf -e 'mynetworks=' && \
    postconf -e 'mynetworks_style=subnet' && \
    postconf -e 'maillog_file=/dev/stdout'

COPY root/ /

EXPOSE 25
