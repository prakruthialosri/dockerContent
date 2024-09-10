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


  mongo:
 image: lerndevops/mongo
 container_name: springboot-mongo
 ports: # for demo/debug purpose only
 - 27017:27017
 volumes:
 - /home/compose/data:/data/db
 - /home/compose/data-bkp:/data/bkp
 restart: always
