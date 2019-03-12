FROM plone:5.1.5

COPY custom.cfg /plone/instance/

RUN buildDeps="build-essential libldap2-dev libsasl2-dev libssl-dev git" \
 && apt-get update \
 && apt-get install -y --no-install-recommends $buildDeps

RUN gosu plone buildout -c custom.cfg \
 && apt-get purge -y --auto-remove build-essential \
 && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["start"]
