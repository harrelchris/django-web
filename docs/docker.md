## Docker

### Build

```shell
docker build -t app .
```

### Run

```shell
docker run -d -p 8000:8000 --name app --env-file ./.env app
```

### Exec

Migrate

```shell
docker exec -it app python app/manage.py migrate
```

Collect Static

```shell
docker exec -it app python app/manage.py collectstatic --noinput
```

Create Super User

```shell
docker exec -it app python app/manage.py createsuperuser --username user --email user@email.com
```

Shell

```shell
docker exec -it app bash
```

### Stop

```shell
docker stop app
```

### Remove

Container

```shell
docker rm app
```

Image

```shell
docker rmi app
```
