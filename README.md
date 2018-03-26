#Docker shh keys composer

Docker hub https://hub.docker.com/r/amisyura/composer/

#RUN
====
```docker run --rm -it -v "$PWD":/app -v "$HOME"/.ssh:/root/.ssh amisyura/composer [install]```
or 
```
alias composer="docker run --rm -it -v "$PWD":/app -v "$HOME"/.ssh:/root/.ssh amisyura/composer"
composer install
```
