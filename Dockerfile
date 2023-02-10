FROM alpine:latest

ADD backup.sh /backup.sh
RUN chmod +x /backup.sh && mkdir /volumes && mkdir /backups
RUN crontab -l | { cat; echo "0 4 * * * sh /backup.sh"; } | crontab -

WORKDIR /volumes

CMD ["cron -f"]