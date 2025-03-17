ARG KONG_VERSION=3.6.1
FROM kong:$KONG_VERSION-alpine

COPY kong.yml /usr/local/kong/declarative/kong.yml

ENV KONG_DATABASE=off
ENV KONG_DECLARATIVE_CONFIG=/usr/local/kong/declarative/kong.yml
