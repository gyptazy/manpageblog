# syntax=docker/dockerfile:1

FROM debian

# Labels
LABEL maintainer="gyptazy@gyptazy.ch"
LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.description="Manpageblog on nginx."
LABEL org.label-schema.url="https://manpageblog.org/"

RUN apt update && \
    apt install -y git nginx python3 && \
    mkdir /opt/manpageblog/ && \
    cd /opt/manpageblog && \
    git clone https://github.com/gyptazy/manpageblog.git && \
    cd /opt/manpageblog/manpageblog && \
    /opt/manpageblog/manpageblog/manpageblog && \
    cp -r /opt/manpageblog/manpageblog/docroot/* /var/www/html/

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
