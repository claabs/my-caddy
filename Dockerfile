FROM caddy:alpine-builder AS builder

RUN xcaddy build \
    --with https://github.com/caddy-dns/cloudflare

FROM caddy:alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy