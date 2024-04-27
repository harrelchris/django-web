# Development Docker Compose

### Start

```shell
docker compose -f dev.yaml up -d
```

### Exec

Migrate

```shell
docker compose -f dev.yaml exec app python app/manage.py migrate
```

Collect Static

```shell
docker compose -f dev.yaml exec app python app/manage.py collectstatic --no-input
```

Create Super User

```shell
docker compose -f dev.yaml exec app python app/manage.py createsuperuser --username user --email user@email.com
```

### Stop

```shell
docker compose -f dev.yaml down
```

### Remove

Images

```shell
docker rmi adminer amir20/dozzle app nginx:modified postgres
```

Volumes

```shell
docker volume rm dev_postgres dev_static
```

## Shell

```shell
docker compose -f dev.yaml exec app bash
```
