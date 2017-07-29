FROM centos:7
MAINTAINER Mario Alvarez <ahoy@m4grio.me>

ENV FLASK_VERSION 0.12.2

RUN \
    set -xe ;\
    pip install flask==${FLASK_VERSION}

EXPOSE 5000:5000

CMD ["flask"]
