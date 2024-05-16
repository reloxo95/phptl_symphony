FROM ubuntu:20.04

# BASIC
RUN apt update
RUN apt upgrade -y
RUN apt install apt-utils
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN apt install -y software-properties-common && rm -rf /var/lib/apt/lists/*
RUN apt update

# INSTALL NGINX
RUN apt install -y vim htop curl sudo
RUN apt remove --purge -y apache2*

# INSTALL PHP
RUN add-apt-repository ppa:ondrej/php
RUN apt update
RUN apt upgrade -y
RUN apt autoclean -y
RUN apt autoremove -y
RUN apt install -y php8.2
RUN apt install -y php8.2-fpm php8.2-gd php8.2-cli php8.2-mysql php8.2-xml php8.2-zip php8.2-curl php8.2-mbstring
RUN service php8.2-fpm start

# INSTALL COMPOSER
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/local/bin/composer

# INSTALL SYMFONY
RUN curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.deb.sh' | sudo -E bash
RUN apt install -y symfony-cli

# INSTALL MYSQL 8
RUN apt install -y libaio1 libaio-dev
RUN apt install -y mysql-server
COPY ./mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
COPY ./my.cnf /root/.my.cnf
COPY ./build_db.sh /root/build_db.sh
COPY ./start_webapp.sh /root/start_webapp.sh

RUN chmod +x /root/build_db.sh
RUN chmod +x /root/start_webapp.sh
