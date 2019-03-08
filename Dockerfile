FROM plone:5.1.5

COPY site.cfg /plone/instance/
RUN buildDeps="build-essential libldap2-dev libsasl2-dev libssl-dev git-all" \
 && apt-get update \
 && apt-get install -y --no-install-recommends $buildDeps \
 && gosu plone buildout -c site.cfg \
 && apt-get purge -y --auto-remove build-essential \
 && rm -rf /var/lib/apt/lists/*
