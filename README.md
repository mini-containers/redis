# mini/redis

[Redis](http://redis.io/) service container.

## Usage

To run this container and bind port `6379`:

```
docker run -d -p 6379:6379 mini/redis
```

You can now check the logs:

```
docker logs <CONTAINER_ID>
```

### Adjusting maximum memory

This container by default will set `64MB` of maximum memory. Please note that
Redis will fail to write data when the limit has been reached. You can still
read existing data.

If you want to adjust this (bigger or smaller), use `REDIS_MAXMEMORY`
environment variable:

```
docker run -d -p 6379:6379 -e REDIS_MAXMEMORY=512MB mini/redis
```

Above example will limit Redis to use a maximum of `512MB` of RAM.

You can express sizes in bytes, kilobytes, gigabytes or terabytes, if you
like :grin:

### Data and volumes

This container defines `/data` as bind mount volume. You can mount it when
starting the container:

```
docker run -v /mydata/redis:/data -d -p 6379:6379 mini/redis
```

## Sponsor

Work on this was made possible thanks to [AREA 17](http://www.area17.com).

## License

All the code contained in this repository, unless explicitly stated, is
licensed under ISC license.

A copy of the license can be found inside the [LICENSE](LICENSE) file.
