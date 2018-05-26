# Topera's Hello World #018
## Dockerfile used to deliver SpringBoot application
This hello world shows how to use Docker to deploy the jar of a SpringBoot application

## How to download this source code
* Use the `Clone or download` button above the get the url of this repository
* In IntelliJ IDEA: File → New → Project From Version Control -> Git -> put the url of this repository

## How to test
* Generated the jar with the application:
    * `$ gradle bootJar`
* Create a new Docker Image using the Dockerfile, to encapsulate the jar:
    * `$ docker build -t hello:1.0 .`
* Run the new Docker Image:
    * `$ docker run -p 8080:8080 --name hello hello:1.0 -d`
* Wait some seconds and access http://localhost:8080/test

## Tech Stack
* IDE: Sublime Text 2016 / IntelliJ IDEA 2018.1
* Build system: Gradle 4.7
* Back-end: Java 1.8.0, Spring Boot 2.0.1
* Docker version 18.03.1-ce

To take a look in other projects, please see https://github.com/topera/index


