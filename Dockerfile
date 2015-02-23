############################################################
# Dockerfile to run Memcached Containers
# Based on Centos Image
############################################################

# Set the base image to use to Centos
FROM centos:centos7

# Set the file maintainer (your name - the file's author)
MAINTAINER Brian Johnson

# Install Memcached
RUN yum -y install memcached

# Port to expose (default: 11211)
EXPOSE 11211

# Default Memcached run command arguments
CMD ["-u", "root", "-m", "128"]

# Set the user to run Memcached daemon
USER daemon

# Set the entrypoint to memcached binary
ENTRYPOINT memcached
