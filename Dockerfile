FROM alpine:edge
MAINTAINER demonlj <jason.lin03@gmail.com> 

EXPOSE 1080 1087

RUN set -ex && \
	echo 'http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
	apk update && \
	apk --update add --no-cache \
		bash \
		musl polipo \
		libev libressl2.5-libcrypto libsodium pcre udns shadowsocks-libev

ADD files/start.sh /start.sh
ADD files/polipo.conf /polipo.conf
RUN chmod +x /start.sh

WORKDIR /
CMD ["/start.sh"]
