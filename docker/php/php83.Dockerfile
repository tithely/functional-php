#-------------------------------
#           README.md
#-------------------------------

# This Dockerfile is for development and image testing only.

# When using this file be sure to update docker-compose.yml to reference this file.

# Please do not copy application code into this Dockerfile.

# Changes from this file can turn into changes in the base images.

# Feel free to make PR against devops-docker and DevOps will review it.

FROM tithely/php:8.3-apache-dev

#------------------------------
# Begin changes below this note
#------------------------------

# Install custom packages
RUN apt-get update -qq && \
    apt-get install -qq \
    vim
