FROM alpine:latest AS system

WORKDIR /app

RUN apk add certbot git

ENV ACME_CHALLENGE "/app/acme-challenge/"

COPY . .

RUN mkdir ${ACME_CHALLENGE}
RUN chmod 755 /app/mycertbot.sh

RUN /usr/bin/crontab /app/crontab.txt

RUN git clone https://github.com/vishnubob/wait-for-it.git

CMD "./main.sh"