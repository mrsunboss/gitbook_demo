FROM gitbook/alpine-glibc

EXPOSE 4000

WORKDIR /usr/src/app

COPY . /usr/src/app

CMD gitbook serve
