FROM ruby:2.7.1-slim-buster

WORKDIR /genbgp
COPY . .

RUN apt-get update && apt-get install -y \
  bgpq3 \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["script/ruby-generate"]
