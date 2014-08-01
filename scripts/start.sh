#!/bin/sh

local REDIS_CONF="/etc/redis.conf"

set_maxmemory() {
	if [ ! -f /.redis_maxmemory_set ]; then
		local MAXMEMORY=${REDIS_MAXMEMORY:-"64MB"}

		echo "=> Set Redis maximum memory to $MAXMEMORY."
		echo "maxmemory $MAXMEMORY" >> $REDIS_CONF

		touch /.redis_maxmemory_set
	fi
}

start() {
	set_maxmemory

	exec redis-server $REDIS_CONF
}

start
