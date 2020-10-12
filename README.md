# Multi tenancy for database level

We use JavaEE, Hibernate, Postgresql, Wildfly to implement this tenancy

# Run project
We can see in docker-compose.yaml where we defined all services. Require docker, docker compose installed in system.
> docker-compose up

- Postgres database is listening on port 6543 but we can change it in docker-compose.yaml file
- Application is listen on port 9090
- http://localhost:9090/multi_tenancy/api