# Docker Hub pull-through proxy cache (Caddy + Let's Encrypt)

TLS-terminated pull-through cache for Docker Hub. GitHub-hosted runners pull through your mirror instead of hitting Docker Hub directly.

## Requirements

- DNS name pointing to your server (e.g. `mirror.example.com`)
- Ports 80/443 open
- Docker + docker compose

## Setup

1) Bootstrap:

```
./bin/bootstrap
```

This copies template configs into `data/`.

2) Edit env files:

```
data/caddy/config/.env       # MIRROR_HOST, BASIC_AUTH_*
data/registry/config/.env    # REGISTRY_PROXY_USERNAME, REGISTRY_PROXY_PASSWORD
```

3) Generate bcrypt hash for basic auth:

```
htpasswd -nbB user pass | cut -d: -f2
```

Set `BASIC_AUTH_USER` and `BASIC_AUTH_HASH` in `data/caddy/config/.env`.

4) Start:

```
docker compose up -d
```

## GitHub Actions BuildKit configuration

```
- uses: docker/setup-buildx-action@master
  with:
    buildkitd-config-inline: |
      [registry."docker.io"]
        mirrors = ["https://mirror.example.com"]
```

Add `docker login` step for the mirror before the build.

## Notes

- Keep the mirror private or protected; an open mirror can be abused.
- Cache grows over time; prune `./data/registry/data` if needed.
- Caddy auto-renews certificates. No extra config needed.
- Use HTTPS; GitHub-hosted runners reject insecure mirrors.
