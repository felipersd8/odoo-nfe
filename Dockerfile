FROM odoo:16.0

USER root
RUN apt-get update \
  && apt-get install -y pkg-config libxml2-dev libxmlsec1-dev libxmlsec1-openssl \
  && pip3 install xmlsec \
  && rm -rf /var/lib/apt/lists/*

USER odoo
