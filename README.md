# Laravel - Local Development Environment -
## HowTo
1. Create a project for Laravel(please wait for a while)

```
$ mkdir project
$ docker-compose build
$ docker-compose up -d
$ docker-compose exec php laravel new {project-name}
```

2. Edit docker-compose.yml

```yml
  nginx:
    image: nginx:latest
    container_name: "laravel-nginx"
    environment:
      TZ: "Asia/Tokyo"
    ports:
      - "8080:80"
      - "443:443"
    volumes:
-      - ./project:/var/www/html
+      - ./project/{project-name}:/var/www/html
  php:
    build: ./php
    container_name: "laravel-php"
    environment:
      TZ: "Asia/Tokyo"
    volumes:
-      - ./project:/var/www/html
+      - ./project/{project-name}:/var/www/html
```

3. docker-compose restart
```
$ docker-compose restart
```

4. Access https://localhost
5. You will see Laravel's default screen

Please enjoy laravel

