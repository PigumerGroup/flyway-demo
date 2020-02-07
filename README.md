Flyway の DEMO
==============

* https://github.com/flyway/flyway-docker

# docker-compose を使ったデモ

```
$ docker-compose up -d
$ docker ps --all
```

mariadb の CONTAINER_ID を使って接続

```
$ docker exec -it <CONTAINER_ID> /bin/sh
# mysql -u root -ppassword
> describe myschema.DEMO;
```
