FROM alpine:latest

LABEL "com.github.actions.name"="Backport pull request"
LABEL "com.github.actions.description"="Backport pull request based on backport label"
LABEL "com.github.actions.icon"="corner-left-down"
LABEL "com.github.actions.color"="gray"

RUN apk add --update --no-cache \
    bash \
    ca-certificates \
    curl \
    jq \
    git

COPY backport /usr/bin/backport

USER 1001:115

ENTRYPOINT ["backport"]
