FROM node:6-slim

ARG VERSION=3.2.2

RUN npm install --global gitbook-cli &&\
	gitbook fetch ${VERSION} &&\
	npm cache clear &&\
	rm -rf /tmp/*

WORKDIR /src/gitbook

#VOLUME /src/gitbook

COPY . /src/gitbook

EXPOSE 4000 35729

CMD /usr/local/bin/gitbook serve
