# Deprecated

Look for the PloneSAAS docker image

### Eionet Plone Docker Image

This repository published the Docker image, but it shouldn't be used for
docker-compose based deployments, only for development. See the `DEVELOP.md`
file for details.

Docker Image is based on [official Plone docker image](https://github.com/plone/plone.docker)

Deployments should be done using
[Eionet - WWW](https://github.com/eea/eea.rancher.catalog/tree/master/templates/www-eionet)
template from the Rancher Catalog.

### Supported tags and respective Dockerfile links

  - `:latest` (default)

## Base docker image

 - [hub.docker.com](https://hub.docker.com/r/eeacms/eionet)

## Source code

  - [github.com](https://github.com/eea/eea.docker.eionet)

### Installation (only for development)

1. Install [Docker](https://www.docker.com/)

2. Install [Docker Compose](https://docs.docker.com/compose/) (optional)

3. See `DEVELOP.md` for further details.

## Usage

See [Plone5 Docker image](https://github.com/plone/plone.docker)

## Upgrade

    $ docker pull eeacms/eionet

## Copyright and license

The Initial Owner of the Original Code is European Environment Agency (EEA).
All Rights Reserved.

The Original Code is free software;
you can redistribute it and/or modify it under the terms of the GNU
General Public License as published by the Free Software Foundation;
either version 2 of the License, or (at your option) any later
version.

## Funding

[European Environment Agency (EU)](http://eea.europa.eu)
