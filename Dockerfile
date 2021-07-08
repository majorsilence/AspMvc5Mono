FROM majorsilence/docker-mono-fastcgi-nginx:latest

LABEL maintainer="Peter Gill <peter@majorsilence.com>"


COPY Mvc5ExampleSite/bin/app.publish /var/www


CMD ["/usr/sbin/runit_bootstrap"]
