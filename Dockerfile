FROM busybox:latest

COPY ./target/x86_64-unknown-linux-musl/release/q-api-auth /bin/q-api-auth
# COPY ./target/release/q-api-auth /bin/q-api-auth
COPY ./Rocket.toml /root

WORKDIR /root

CMD [ "q-api-auth" ]
