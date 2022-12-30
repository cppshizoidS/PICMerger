FROM rust:1.66 AS build
COPY . .
RUN cargo build --release

COPY --from=build ./target/release/picmerger ./target/release/picmerger
CMD ["/target/release/picmerger"]