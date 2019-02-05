FROM plone:5.1.5

COPY site.cfg /plone/instance/

RUN apt-get update && apt-get install build-essential python3-dev \
    python2.7-dev libldap2-dev libsasl2-dev libssl-dev -y

RUN gosu plone buildout -c site.cfg
