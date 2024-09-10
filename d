version: '3'
services:
 springbootapp:
 image: edureka01/spring-boot-app:latest
 container_name: springboot
 ports:
   - 8010:8080
 depends_on:
   - mongo
 restart: on-failure
