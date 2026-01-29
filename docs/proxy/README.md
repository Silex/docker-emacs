# Docker Hub pull-through proxy cache (Traefik + Let’s Encrypt)

This sets up a TLS-terminated pull-through cache for Docker Hub so GitHub-hosted runners pull through your mirror instead of hitting Docker Hub directly.

## Requirements

- A DNS name pointing to your server (e.g. `mirror.example.com`)
- Ports 80/443 open
- Docker + docker compose

## Setup

1) Create an `.env` file next to `docker-compose.yml`:

```
MIRROR_HOST=mirror.example.com
LETSENCRYPT_EMAIL=you@example.com
DOCKERHUB_USERNAME=your_dockerhub_username
DOCKERHUB_TOKEN=your_dockerhub_token

# Basic auth (htpasswd -nbB user pass)
BASIC_AUTH=user:$2y$05$...
```

2) Start the proxy:

```
docker compose up -d
```

3) Basic auth is required. Generate credentials and set `BASIC_AUTH` in `.env`:

```
htpasswd -nbB user pass
```

## GitHub Actions BuildKit configuration

Add the mirror to buildx:

```
- uses: docker/setup-buildx-action@master
  with:
    buildkitd-config-inline: |
      [registry."docker.io"]
        mirrors = ["https://mirror.example.com"]
```

Add a `docker login` step for the mirror before the build.

## Notes

- Keep the mirror private or protected; an open mirror can be abused.
- Cache size grows over time; prune `./data` if needed.
- Use HTTPS; GitHub-hosted runners will not accept insecure mirrors by default.
