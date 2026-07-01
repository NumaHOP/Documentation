# Dockerisation of NumaHOP

Most of the commands that refer to files on this page sould be run inside a local checkout of the git repository: 
```bash
git clone https://github.com/NumaHOP/NumaHOP.git numahop && cd numahop
```

It is recommended to use at least docker v28.4.0.

## Docker and composition.

All the docker configuration and files live in the `src/main/docker` directory.

The Docker image of NumaHOP is built in 2 stages first a `base` is established.
In this base we install the runtime dependencies of NumaHOP and setup the
system user that numahop will use.

Then a `run` stage is built. We setup the working directory for numahop and the
yaz library. This step is only needed to be run once as the rebuild after
changes in the source code of NumaHOP will reuse the latest `run` image as a
base.

This run stage will then be used by the jib maven plugin to install the numahop
build artifact inside the image. The new image is named `numahop` and will have
the tag `latest`.
 
The composition is declared with a compose file per service with toplevel compose
files that serve as aliases.

Here is the list of services:
- `numahop-db`: the mariadb container.
- `numahop-es`: the elasticsearch container.
- `numahop-mail`: the mail container.
- `numahop-nh`: the numahop application container.

The two file aliases are `all` and `env`. `env` regroups the db, es, and mail
containers `all` adds to these the application container.

## Build the docker image.

Using the raw commands:
<!-- i18n:ignore -->
```bash
docker build -t numahop-run src/main/docker --target run 
mvn clean compile -Pdocker,webapp 
```
Using the justfile:
```bash
just setup && just build docker
```

After this you should have two image present in your local docker repository:
```bash
docker image ls
```

## Managing the docker composition.

Before using the composition ensure you have built the docker image as described precedently.

To start up the docker composition:
```bash
# Note: all docker compose commands with the -f argument should be started from the root of the NumaHOP source code repository
docker compose -p numahop -f src/main/docker/docker-compose.all.yml up
# Or using just
just docker up
```

You now should be able to access your NumaHOP instance at [http://localhost:8080](http://localhost:8080).
You also can consult numahop logs with:
```bash
docker compose -p numahop -f src/main/docker/docker-compose.all.yml logs 
# Or using just
just docker logs
```
To stop all the services:
```bash
docker compose -p numahop -f src/main/docker/docker-compose.all.yml stop

just docker stop # stop les services
just docker down # stop les services et supprime les conteneurs
just docker clean # stop les services et supprime les conteneurs en detachant les volumes
```

If you want to execute a command inside a container:
```bash
docker compose -p numahop exec -it [service-name] -- [command]
# For example to connect to the db use
docker compose -p numahop exec -it numahop-db mariadb -Dnumahop -unumahop -pnumahop
# Open a file
docker compose -p numahop exec -it numahop-db mariadb -Dnumahop -unumahop -pnumahop
```

For developpements it is usefull to be able to reset the data of your composition.
The persisted data in docker is stored inside volumes:
```bash
docker volume ls
```
All the volumes used by the composition are in the form `numahop_numahop-[image]-volume`.

These volumes can be detached/deleted from the composition:
```bash
# Pour toute les images
docker compose -p numahop -f src/main/docker/docker-compose.[image].yml rm -f -s -v
docker volume rm numahop_numahop-[image]-volume

# Or using the justfile 
just docker clean
just docker reset nh
just docker reset es
just docker reset db 
```

