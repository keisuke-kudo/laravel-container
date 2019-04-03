CREATE DATABASE IF NOT EXISTS `app-test`;
GRANT ALL PRIVILEGES ON `app-user`.* TO 'app-user'@'%';
GRANT ALL PRIVILEGES ON `app-test`.* TO 'app-user'@'%';
FLUSH PRIVILEGES;
