FROM httpd

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    tftpd-hpa --no-install-recommends

EXPOSE 80 69

VOLUME ["/usr/local/apache2/htdocs","/srv/tftp"]

ADD init.sh /

CMD ["/init.sh"]
