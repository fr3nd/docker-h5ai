# h5ai Docker image

## Description

h5ai is a modern file indexer for HTTP web servers with focus on your files.
Directories are displayed in a appealing way and browsing them is enhanced by
different views, a breadcrumb and a tree overview. Initially h5ai was an
acronym for HTML5 Apache Index but now it supports other web servers too.

This image allows you to run h5ai in a Docker container.

## How to run it

Just mount the directories you want to show and make sure they are accessible:

```
docker run \
   -p 8080:80 \
   -v /home/user/:/var/www/html/user_home:ro \
   tarek369/h5ai
```
