FROM ubuntu:17.04
MAINTAINER Raphael Ribeiro <raphael.defcon3d@gmail.com>

# Atualiza os pacotes.
RUN apt-get update

# Instala Apache
RUN apt-get install -y apache2

# Instala PHP7
RUN apt-get install -y php7.0 php7.0-mysql

# Limpa pacotes
RUN apt-get clean

# Define volume
VOLUME ["/var/www/html"]

# Define portas
EXPOSE 80

# Seta diretório raiz
WORKDIR /

# Configurações PHP
COPY config/php.ini /etc/php/7.0/cli/

# Configurações Apache
COPY config/apache-start.sh /
ENTRYPOINT ["/bin/bash", "./apache-start.sh"]
