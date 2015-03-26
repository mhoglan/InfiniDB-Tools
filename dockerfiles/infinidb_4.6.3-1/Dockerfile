FROM infinidb:base
MAINTAINER Michael Hoglan <michaelh@tune.com>

# Provide the playbook vars for this image
COPY playbook_vars.yml /opt/tune/playbooks/vars/

WORKDIR /opt/tune/playbooks/

# Perform InfiniDB installation
# Cleanup yum which playbook may have used
# Stop the service (installation auto starts it) 
RUN ansible-playbook -i localhost_launched docker_infinidb.yml -e "@vars/playbook_vars.yml" --connection=local && service infinidb stop && yum clean all

EXPOSE 3306
CMD ["/usr/bin/supervisord", "--configuration", "/etc/supervisord_infinidb.conf"]