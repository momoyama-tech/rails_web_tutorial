# README

## init

```bash
# new
$ docker compose run --rm api rails new . --api --force --no-deps --database=mysql
# db
$ docker-compose run api rails db:create
```

## develop

```bash
$ docker-compose up

# shell
$ docker-compose exec api bash
```
