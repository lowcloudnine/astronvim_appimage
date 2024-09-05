
FROM debian:bullseye AS test-build

RUN mkdir -p /tmp

RUN echo "ready to copy!"

RUN apt-get update && apt-get install -y git fuse

COPY output /tmp/
