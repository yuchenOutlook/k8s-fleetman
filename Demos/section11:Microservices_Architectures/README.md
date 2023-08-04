
# An Introduction to MicroServices.

## Side Notes

The kill_docker.sh is a script used to kill all the processes containing the keyword "docker".
Because I had some problems restarting the docker desktop on my macOs, so I wrote the script and to execute it, please read the other README file.
[Demos/section11:Microservices_Architectures/README_kill_docker.md](README_kill_docker.md)


## 1. Jeff Bezo's Two-Pizza Team Rule

Jeff Bezos, the founder of Amazon, introduced the "Two-Pizza Team" rule as a way to manage the size and efficiency of teams within the company. The rule states that any team should be small enough that it can be fed with two pizzas.

## 2. High Cohension and Loose Couple 高内聚低耦合

Single Responsiblity of a microservice is key, and also well defined interfaces are important. Nested dependencies are dreadful.

## 2. Each microservies, will maintain its own datastore.

Instead of using a single, integrated database that contains all the integration of tables and data schemas.

<span style="color:red"> **Each microservice will maintain its own dataStore!!!** <span>
