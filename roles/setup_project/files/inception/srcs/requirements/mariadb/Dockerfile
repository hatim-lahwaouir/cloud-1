FROM debian:11

# ENV SQL_DATABASE="mohamad"
# ENV SQL_USER="mohamadrojola"
# ENV SQL_PASSWORD="mohamadrojola"
# ENV SQL_ROOT_PASSWORD="mohamadrojolaroot"

RUN apt update && apt upgrade -y && apt install mariadb-server -y
RUN apt install vim -y 
COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf
RUN mkdir -p /etc/mysql/script 
COPY ./script/script.sh	/etc/mysql/script/
RUN chmod +x /etc/mysql/script/script.sh

CMD ["/etc/mysql/script/script.sh"]
