FROM ghcr.io/appleboy/drone-discord:1.5.1@sha256:5066f98dd290240b99bd22db29bdc14443e593bf6c42a78be36bfa6838d12a9b

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
