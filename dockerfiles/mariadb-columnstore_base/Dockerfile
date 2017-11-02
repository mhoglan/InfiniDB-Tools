# Base image for InfiniDB installs
FROM ubuntu:16.04
MAINTAINER Michael Hoglan <mhoglan@gmail.com>

# Install system dependencies to enable ansible, boto, supervisor
# Using PIP to ensure dependencies
RUN apt-get update \
        && apt-get install -y gcc python-setuptools python-dev python-pip sudo tar \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*

RUN pip install ansible boto supervisor

# Provide the playbooks
ADD playbooks/ /opt/mhoglan/playbooks
ADD packages/mariadb-columnstore/ /opt/mhoglan/packages

# enabling sudo over ssh
RUN sed -i 's/.*requiretty$/#Defaults requiretty/' /etc/sudoers

CMD ["true"]
