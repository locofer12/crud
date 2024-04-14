# PASOS PARA EJECUTAR CRUD EN MARIADB

## Eliminar contenedores e imagenes previas
docker system prune -a -f

## Vera que hay un archivo llamado mariadbDockerfile que contiene el archivo dockerfile para la base de datos mariadb, se hace para correr en local


## Ejecutar comando
mvn clean package -DskipTest

## Ejecutar comando para crear contenedor mariadb , lo corremos en el puerto 3309:3306
docker run --name mariadb -eMYSQL_ROOT_PASSWORD=mariadb -e MYSQL_DATABASE=mariadb -e MYSQL_USER=mariadb -e MYSQL_PASSWORD=mariadb -p 3309:3306 -d mariadb:latest


## Ejecutar y depurar aplicacion CrudApplication

## Eliminar imágenes no utilizadas
docker image prune -a

## Revisar crud en la web
localhost:8080/users

## Detener contenedor mariadb para poder correr la app en container
docker stop mariadb

## Dockerizar aplicacion
docker-compose up -d

## Revisar crud en la web 
localhost:8080/users

## (OPCIONAL)
## Si hubieran problemas y desea bajar el container directo de dockerhub puede hacerlo con
docker pull locofer12/crud-java
docker run -d -p 8080:8080 locofer12/crud-java


#INTEGRANTES

Fernando José Rosales Valdes RV19012

Gabriel Omar Calderón Calderón CC22060

Hazel Azucena Calderón Bonilla CB22014
