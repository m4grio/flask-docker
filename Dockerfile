FROM alpine:3.6
MAINTAINER Mario Alvarez <ahoy@m4grio.me>

ENV FLASK_VERSION 0.12.2

# Python and dependences
RUN \
    set -xe ;\
    apk add --no-cache \
        python

# Install pip
RUN \
    set -xe ;\
    python -m ensurepip

# Install Flask
RUN \
    set -xe ;\
    pip install flask==${FLASK_VERSION}

WORKDIR /opt/app

EXPOSE 5000:5000

COPY entrypoint.sh /bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

CMD ["flask"]
