# webenv-php

[![](https://images.microbadger.com/badges/image/andreiio/webenv-php.svg)](https://microbadger.com/images/andreiio/webenv-php)

PHP FPM docker image for local development, to be used with [webenv-httpd](https://github.com/andreiio/webenv-httpd).

Check out the main [webenv](https://github.com/andreiio/webenv) repo for more information.

## Usage
```
docker create \
--name=webenv-php \
-p 9000:9000 \
-e UID=<uid> \
-e GID=<gid> \
-v </path/to/www>:/www \
andreiio/webenv-php
```
