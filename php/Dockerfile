FROM php:7-fpm

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /composer
ENV PATH $PATH:/composer/vendor/bin
ENV LANG C.UTF-8
ENV LANGUAGE en_US:

RUN apt-get update \
  && apt-get install -y libzip-dev zlib1g-dev unzip vim zip libpq-dev \
  # Dockerコンテナ内でIlluminate\Http\UploadedFileクラスを利用するには PHP GD が必要
  libpng-dev libjpeg-dev \
  && pecl install xdebug-beta \
  && docker-php-ext-enable xdebug \
  # Dockerコンテナ内でIlluminate\Http\UploadedFileクラスを利用するには PHP GD が必要
  && docker-php-ext-configure gd --with-png-dir=/usr/include --with-jpeg-dir=/usr/include \
  && docker-php-ext-install gd zip pdo_mysql pdo_pgsql \
  # composer
  && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
  && php -r "if (hash_file('sha384', 'composer-setup.php') === trim(file_get_contents('https://composer.github.io/installer.sig'))) { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
  && php composer-setup.php \
  && php -r "unlink('composer-setup.php');" \
  && mv composer.phar /usr/local/bin/composer \
  && composer global require hirak/prestissimo \
  && composer global require laravel/installer

# 解放ポート
EXPOSE 22 80 443
