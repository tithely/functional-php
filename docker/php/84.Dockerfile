FROM tithely/php:8.4-apache-dev

#------------------------------
# Begin changes below this note
#------------------------------

# Install custom packages
RUN apt-get update -qq && \
    apt-get install -qq \
    vim

# Copy custom php.ini settings
COPY docker/custom.ini /usr/local/etc/php/conf.d/custom_overrides.ini
