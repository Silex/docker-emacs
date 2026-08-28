# Docker Hub pull-through proxy cache (Caddy + Let's Encrypt)

TLS-terminated pull-through cache for Docker Hub. GitHub-hosted runners pull through your mirror instead of hitting Docker Hub directly.

## Requirements

- DNS name pointing to your server (e.g. `mirror.example.com`)
- Ports 80/443 open
- Docker + docker compose
- `openssl`, `rsync` and `envsubst` (Debian/Ubuntu: `gettext-base`)

## Setup

Run the configure script and answer its prompts:

```
./bin/configure
```

It seeds `data/`, generates the mirror password and keeps only its bcrypt hash, then writes
`data/caddy/config/.env` and `data/registry/config/.env`. Re-running it never overwrites an
existing env file, so the credentials stay stable.

The generated password is printed once, because only its hash is stored. In the docker-emacs
repository it is the `MIRROR_PASSWORD` secret, next to the `MIRROR_USERNAME` and `MIRROR_HOST`
variables.

Start the stack:

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
