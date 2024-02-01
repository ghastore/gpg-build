FROM alpine

LABEL "name"="GPG Builder"
LABEL "description"="GitHub Action for build GPG files."
LABEL "maintainer"="Kai Kimera <mail@kai.kim>"
LABEL "repository"="https://github.com/ghastore/gpg-build.git"
LABEL "homepage"="https://github.com/ghastore"

COPY *.sh /
RUN apk add --no-cache bash curl git git-lfs gpg

ENTRYPOINT ["/entrypoint.sh"]
