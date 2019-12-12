FROM alpine:latest

LABEL "com.github.actions.name"="Backport pull request"
LABEL "com.github.actions.description"="Backport pull request based on backport label"
LABEL "com.github.actions.icon"="corner-left-down"
LABEL "com.github.actions.color"="gray"

RUN apk add --no-cache \
    bash \
    ca-certificates \
    curl \
    jq \
    git

RUN git config --global user.email "admin@syndesis.io"; \
    git config --global user.name "Backport Action"

COPY backport /usr/bin/backport

ENTRYPOINT ["backport"]
