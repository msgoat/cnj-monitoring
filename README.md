# cnj-monitoring

Showcase demonstrating cloud native monitoring in a Kubernetes cluster.

The actual integration of cluster logging is demonstrated with four different Java backend technologies:

* Java EE (see: [cnj-monitoring-backend-javaee](cnj-monitoring-backend-javaee/README.md))
* Eclipse MicroProfile (see: [cnj-monitoring-backend-micro](cnj-monitoring-backend-micro/README.md))
* Spring Boot + Spring Data (see: [cnj-monitoring-backend-spring](cnj-monitoring-backend-spring/README.md))
* Quarkus (see: [cnj-monitoring-backend-quarkus](cnj-monitoring-backend-quarkus/README.md))

All showcases use a common resources container project, which deploys all attached resources to Kubernetes (see: [cnj-monitoring-resources](cnj-monitoring-resources/README.md)])

## Status
![Build status](https://drone.at.automotive.msg.team/api/badges/msgoat/cnj-monitoring/status.svg)

## Build this showcase 

### Prerequisites

In order to run the build, you have to install the following tools locally:
* Docker
* Docker Compose 
* Maven
* Java JDK 11   

### Run Maven

You can build all showcase applications by running Maven:
```
mvn clean install -P pre-commit-stage
```

The Maven build will create Docker images for all showcase applications and run system tests on them.