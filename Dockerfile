FROM       mini/base
MAINTAINER Luis Lavena <luislavena@gmail.com>

ENV REDIS_VERSION 2.8.17-r0

RUN apk-install redis=$REDIS_VERSION

ADD ./config/redis.conf /etc/redis.conf
ADD ./scripts/start.sh /start.sh

VOLUME ["/data"]

EXPOSE 6379

CMD ["/start.sh"]
