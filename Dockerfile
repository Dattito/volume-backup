FROM alpine:latest

ADD backup.sh /backup.sh
RUN chmod +x /backup.sh && mkdir /volumes && mkdir /backups

WORKDIR /volumes

CMD ["/backup.sh"]