## About this image

- On Docker Hub: https://hub.docker.com/repository/docker/doridian/seafile

- Based upon the vanilla seafile-docker image, seen on https://github.com/haiwen/seafile-docker or https://hub.docker.com/r/seafileltd/seafile-mc

- Modified to include MySQL and memcached in the same container as the main image to allow it running on popular NAS OS docker implementations

- Added DynDNS client using `DDNS_URL_IPV4` and `DDNS_URL_IPV6` environment variables (these are URLs that are curl'd every 5 minutes via cron)

- Uses the same environment variables as the vanilla image, with the exception that `DB_ROOT_PASSWD` is optional (it gets autogenerated on first launch if unset)

- Runs seafile as its own user and not root (currently fixed to UID 1001 and GID 1001)

## Common configuration

### Environment variables

- `SEAFILE_ADMIN_EMAIL` - E-Mail address of the Seafile admin account

- `SEAFILE_ADMIN_PASSWORD` - Password to set upon admin account creation (won't be overwritten if it already exists)

- `SEAFILE_SERVER_HOSTNAME` - Hostname the Seafile server is available under (such as seafile.mydomain.com)

- `SEAFILE_SERVER_LETSENCRYPT` - If set to `true`, then use LetsEncrypt to obtain an SSL/TLS certificate and enable https

- `DDNS_URL_IPV4` - URL to curl every 5 minutes over IPv4 only (to update DynDNS records)

- `DDNS_URL_IPV6` - URL to curl every 5 minutes over IPv6 only (to update DynDNS records)

### Volumes (make sure to mount those to host directories)

- `/shared` - Contains all seafile data and system logs

- `/var/lib/mysql` - Contains the MySQL data

### Ports

- `80` - HTTP (required even when running in HTTP mode!)

- `443` - HTTPS
