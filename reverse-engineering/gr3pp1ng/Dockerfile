FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    gcc \
    dos2unix \
    make

WORKDIR /opt

COPY Makefile .
COPY main.c .
COPY start.sh .

RUN dos2unix start.sh
RUN chmod +x start.sh
RUN make

ENTRYPOINT ["./start.sh"]
