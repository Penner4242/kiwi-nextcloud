# kiwi-nextcloud

[![Build Status](https://github.drone.yavook.de/api/badges/yavook/kiwi-nextcloud/status.svg)](https://github.drone.yavook.de/yavook/kiwi-nextcloud)

> `kiwi` - simple, consistent, powerful

Convenience bundle for [`kiwi-scp`](https://github.com/yavook/kiwi-scp). Also [on Docker Hub](https://hub.docker.com/r/yavook/kiwi-nextcloud).

## Use Case

`kiwi-nextcloud` bundles the Nextcloud fpm with an nginx proxy as one container. These are commonly deployed as separate containers [like this](https://github.com/nextcloud/docker/blob/master/.examples/docker-compose/insecure/mariadb/fpm/docker-compose.yml).

The `web` container in these setups is often overlooked and the additional `nginx.conf` needed is an unnecessary source for errors. Standardize your `kiwi-scp` instances!

Each `kiwi-nextcloud:n` image derives from the official `nextcloud:n-fpm-alpine` images and recognizes the same docker options.

## Typical usage in `docker-compose.yml` sections:

```yaml
wep-app:
  image: yavook/kiwi-nextcloud:n
  volumes:
    - nextcloud:/var/www/html
```

Refer to the official Nextcloud Guides on how to set up your instance.
