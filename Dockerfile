FROM appleboy/drone-discord:1.2.2-linux-amd64

# Github labels
LABEL "com.github.actions.name"="Discord Notify"
LABEL "com.github.actions.description"="Sending a Discord message"
LABEL "com.github.actions.icon"="message-square"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/appleboy/discord-action"
LABEL "homepage"="https://github.com/appleboy"
LABEL "maintainer"="Bo-Yi Wu <appleboy.tw@gmail.com>"
LABEL "version"="0.0.1"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
