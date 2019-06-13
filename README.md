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

## Xdebug settings (PHPStorm)
- `Run > Edit Configurations`  
- Add `PHP Remote Debug`  
- Select a `Configuration > FilterDebugConnectionByIDEKey`  
- Add new `Server`  
- Set `Host: laravel-php`, `Port: 443`, `Debugger: Xdebug`  
- Select a `Use path mappings (select if the server is remote or symlinks are used)`  
- Set `Project files > Abusolute path on the server > /var/www/html`  
- Close with OK  
- Set `IDE key (session id)` to `"XDEBUGKEY"`  
- Set `File > Settings > Languages & Frameworks > PHP > Debug > Xdebug > Debug port` to `9001`

Please enjoy laravel!!  
![](https://media.giphy.com/media/tIeCLkB8geYtW/giphy.gif)
