# Base image for InfiniDB installs
# CentOS 6 known compatability
FROM centos:centos6
MAINTAINER Michael Hoglan <michaelh@tune.com>

# Install system dependencies to enable ansible, boto, supervisor
# Using PIP to ensure dependencies
RUN rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6 \
        && yum install -y gcc python-setuptools python-devel sudo tar \
        && yum clean all \
        && easy_install pip \
        && pip install ansible boto supervisor

# Provide the playbooks
ADD playbooks/ /opt/tune/playbooks

# enabling sudo over ssh
RUN sed -i 's/.*requiretty$/#Defaults requiretty/' /etc/sudoers

CMD ["true"]