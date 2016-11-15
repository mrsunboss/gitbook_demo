

FROM chusiang/gitbook

WORKDIR /usr/src/app

COPY . /usr/src/app

CMD gitbook serve
