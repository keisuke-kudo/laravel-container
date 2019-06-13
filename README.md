# Laravel - Local Development Environment -
## HowTo
1. Create a project for Laravel(please wait for a while)

```
$ cp .env.example .env
$ docker-compose build
$ docker-compose up -d
$ docker-compose exec php laravel new example_project
# or
# git clone git@github.com:username/example-laravel ./project/example-laravel
```

2. Edit .env file

```diff
+ PROJECT_PATH=./project/example_project
- PROJECT_PATH=./project
# Please change the following if necessary
DATABASE=root
DATABASE_ROOT_PASS=root
PMA_USER=root
PMA_PASS=root
```

3. docker-compose restart

```
$ docker-compose down
$ docker-compose up -d
```

4. Access https://localhost
5. You will see Laravel's default screen

Please enjoy laravel!!  
![](https://media.giphy.com/media/tIeCLkB8geYtW/giphy.gif)
