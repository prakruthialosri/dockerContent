version: '3.8'

services:
  tomcat:
    build:
      context: .
      dockerfile: Dockerfile.tomcat
    ports:
      - "8080:8080"

  apache:
    build:
      context: .
      dockerfile: Dockerfile.apache
    ports:
      - "80:80"
    depends_on:
      - tomcat
