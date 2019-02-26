FROM bitwalker/alpine-elixir-phoenix

MAINTAINER Little Kidogo <greetings@littlekidogo.co.za>

## Add SSH for deploying to vps 
RUN apk add --no-cache openssh

## Add Docker to run docker commands 
RUN apk add docker


## Install Semantic Release to use when building
ENV SEMANTIC_RELEASE_VERSION=1.11.0

ADD https://github.com/go-semantic-release/semantic-release/releases/download/v${SEMANTIC_RELEASE_VERSION}/semantic-release_v${SEMANTIC_RELEASE_VERSION}_linux_amd64 /usr/local/bin/semantic-release
RUN chmod a+x /usr/local/bin/semantic-release
