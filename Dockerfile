FROM alpine:3.6
LABEL maintainer="ahoy@m4grio.me"

ENV PYTHON_VERSION 2.7.13

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
ARG flask_version
RUN \
    set -xe ;\
    pip install flask==${flask_version}

RUN mkdir -vp /opt/app
WORKDIR /opt/app

EXPOSE 5000:5000

COPY entrypoint.sh /bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

CMD ["flask"]
