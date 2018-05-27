# Topera's Hello World #018
## Dockerfile used to deliver SpringBoot application, with Gradle
This hello world shows how to use Docker to deploy the jar of a SpringBoot application

## How to download this source code
* Use the `Clone or download` button above the get the url of this repository
* In IntelliJ IDEA: File → New → Project From Version Control → Git → put the url of this repository

## How to test locally
* Generated the jar with the application:
    * `$ gradle bootJar`
* Create a new Docker Image using the Dockerfile, to encapsulate the jar:
    * `$ docker build -t topera/hello:1.0 .`
        * The syntax of `-t` is USERNAME/REPOSITORY:VERSION
* Run the new Docker Image:
    * `$ docker run -d -p 8080:8080 --name hello topera/hello:1.0`
* Wait some seconds and access http://localhost:8080/test

## How to deploy on AWS
* There are many ways. One of them is to create a jar file with only 2 files, following this structure:
    * `Dockerfile`
    * `build/libs/dockerfile-for-springboot.jar`
        * Please take care that the Dockerfile is the root of the jar, not inside a subfolder
* Then, in `AWS` → `Elastic Beanstalk` → Follow step to deploy a docker

## How to share your docker image
* We can share using DockerHub. Lets push the image to the repository
    * `$ docker push topera/hello:1.0`
* It's available here:
    * https://hub.docker.com/r/topera/hello/
* Anyone can install it using:
    * `docker pull topera/hello:1.0`

## How to automatize these operations
* I created a file called `optional.gradle` which has a lot of operations o automatize the steps above. With them we can easily create and Continuous Delivery environment.
* To generate a new package in DockerHub, just run:
    * `$ docker publishImage`
* To run you app locally
    * `$ docker runContainer`
* Other operations
    * `$ docker createImage`
    * `$ docker deleteImage`
    * `$ docker stopContainer`
    * `$ docker deleteContainer`

## Folder Structure
![folder-structure](./doc/files.png)

## Tech Stack
* IDE: IntelliJ IDEA 2018.1
* Build system: Gradle 4.7
* Back-end: Java 1.8.0, Spring Boot 2.0.1
* Docker version 18.03.1-ce

To take a look in other projects, please see https://github.com/topera/index


