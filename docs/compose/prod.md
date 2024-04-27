# Production Docker Compose

### Start

```shell
docker compose -f prod.yaml up -d
```

### Exec

Migrate

```shell
docker compose -f prod.yaml exec app python app/manage.py migrate
```

Collect Static

```shell
docker compose -f prod.yaml exec app python app/manage.py collectstatic --no-input
```

Create Super User

```shell
docker compose -f prod.yaml exec app python app/manage.py createsuperuser
```

### Stop

```shell
docker compose -f prod.yaml down
```

### Remove

Images

```shell
docker rmi app nginx:modified postgres
```

Volumes

```shell
docker volume rm prod_postgres prod_static
```

## Shell

```shell
docker compose -f prod.yaml exec app bash
```
