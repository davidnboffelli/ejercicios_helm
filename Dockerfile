FROM ubuntu:20.04

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
