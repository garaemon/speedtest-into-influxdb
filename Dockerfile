FROM debian:jessie

RUN apt-get update && apt-get install -y python3 python3-pip curl

ENV SPEEDTEST_VERSION 1.0.2

RUN pip3 install speedtest-cli==$SPEEDTEST_VERSION

COPY ./looper.sh /
RUN chmod +x /looper.sh

COPY ./speedtest.sh /
RUN chmod +x /speedtest.sh

ENTRYPOINT ["/looper.sh"]
