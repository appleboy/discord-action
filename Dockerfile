FROM appleboy/drone-discord:1.2.4-linux-amd64

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
