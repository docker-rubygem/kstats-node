FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.0.5

RUN gem install kstats-node --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["_kstats-node-service.sh"]
CMD ["--help"]
