# Development with the Eionet Plone stack

To facilitate development, we have the following services:

  - zeoserver: The regular zeoserver. It needs a data folder created in the
    current folder checkout, to store filestorage and blobstorage.
    current checkout
  - plone: This builds the current Dockerfile based image and starts Plone
  - shell: This is for debugging: it allows manual start of the Plone service
    (use the ./enter_devel.sh script to get inside the container, then run
    `bin/instance fg` to start the Zope service)
  - preproduction: allows testing of published Docker images


Typical workflow is:

  - Start the stack:

  `# docker-compose up -d`

Use the shell container to start Plone:
```
  # ./enter_devel.sh
```
Inside the Plone container, you can use the instance script to start Zope:
```
  $ bin/instance fg
```
To avoid problems, you should use the ``plone`` user inside the container:
```
  $ su - plone
```
If you need to change the custom.cfg you need to rebuild the image:
```
  # docker-compose -f devel-compose.yml rm plone
  # docker-compose -f devel-compose.yml build plone
  # docker-compose -f devel-compose.yml up -d plone
  # ./enter_devel.sh
```
Another method is to do the rebuild from inside the container:
```
  $ bin/develop rb
```
If you do the rebuild, by mistake, as root, you need to fix permissions:
```
  $ chown -R 500 /plone/instance /data
```
After that you need to use the docker-initialise.py script to reset the
configuration file as a zeoclient (by default the config files are created as
standalone instance):
```
  $ /docker-initialise.py
```
