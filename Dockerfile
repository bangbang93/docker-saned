FROM debian:11
RUN apt-get update && apt-get install -y \
    sane \
    sane-utils

COPY saned.conf /etc/sane.d/saned.conf

CMD saned -l 