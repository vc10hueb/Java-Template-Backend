#Overview
This is an example Rest API Service written using:
- Java
- Maven
- Spring Boot
- Docker
- Postgres

#Development
This artifact built by this project is a WAR that can be deployed via tomcat.

Spring Boot command can also be used `java -jar example.war`

The best way to deploy new code is using the dev profile `java -jar example.war --spring.profiles-active=dev`

##Database
The application uses a postgresql database. 
When deployed as an application within the context of a Tomcat app server, 
the WAR expects a JNDI data source. On the tomcat server add to the configuration 
file `$CATALINA_BASE/conf/example.properties` 
the following entry `spring.datasource.jndi-name/jdbc/shipping`.

##Docker
The `db-docker-setup.sh` automates the process of creating the database.

To create the schema and populate the database `mvn flyway:migrate`.

###Docker Compose
A docker compose will run and initialize the database and application `docker-compose up`
For more detailed logging try `docker-compose logs --follow example-service | grep textToSearchFor`