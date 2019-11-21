FROM ubuntu:16.04

# Upgrade base system
RUN apt-get update && apt-get install -y wget python python-dev screen git
WORKDIR /venv
COPY ubuntu_tor_docker.py /venv
RUN chmod a+x /venv/*
ENTRYPOINT python ubuntu_tor_docker.py
