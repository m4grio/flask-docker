FROM centos:7
MAINTAINER Mario Alvarez <ahoy@m4grio.me>

ENV FLASK_VERSION 0.12.2

# Python dependences
RUN \
    set -xe ;\
    yum install epel-release -y ;\
    yum update -y

# Install pip
RUN \
    set -xe ;\
    yum install -y \
        python-pip \
    ;\
    pip install --upgrade pip

# Install Flask
RUN \
    set -xe ;\
    pip install flask==${FLASK_VERSION}

WORKDIR /opt/app

EXPOSE 5000:5000

CMD ["flask"]
