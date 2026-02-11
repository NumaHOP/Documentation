# Dockerisation of NumaHOP

Most of the commands that refer to files on this page sould be run inside a local checkout of the git repository: 
```bash
git clone https://github.com/NumaHOP/NumaHOP.git numahop && cd numahop
```

It is recommended to use at least docker v28.4.0.

## Description of the setup
The Docker image of NumaHOP is built in 2 stages first a `base` is established.
In this base we install the runtime dependencies of NumaHOP and setup the system user that numahop will use.

Then a `run` stage is built. 
We setup the working directory for numahop and the yaz library.

This step is only needed to be run once as the rebuild after changes in the source code of NumaHOP will reuse the latest `run` image as a base.

This run stage will then be used by maven to install the numahop build artifact and finalize the image.
 
## Build the docker image.

Using the raw commands:
```bash
docker build -t numahop-run src/main/docker --target run # Build the run image.

# Optionaly add: -Dfast=true 
mvn clean compile -Pdocker # Finalize the image.
```

Using the makefile:
```bash
make setup-docker # Build the run image
make build-docker # Finalize the image
```

After this you should have two image present in your local docker repository:
```bash
docker image ls
```

## Managing the docker composition.

Before launching the composition please assure you have built the NumaHOP image.

In order to run an instance of numahop we can use the `docker compose` command. This allows us to use images for all the external components NumaHOP uses.

The composition today comports 4 services:
- `numahop-app` Numahop
- `numahop-mariadb` Mariadb
- `numahop-elasticsearch` ElasticSearch
- `numahop-mail` Mail Server 

This composition is declared inside `docker-compose.yml` files in the source of NumaHOP.
There is 2 files available:
- `env/main/docker/docker-compose.yml` which is the part of the composition that defines the Mariadb, ElasticSearch and Mail services. It should be started first.
- `run/main/docker/docker-compose.yml` which is where the numahop service is declared.

Now all your composition can be started with:
```bash
# Note: all docker compose commands with the -f argument should be started from the root of the NumaHOP source code repository
docker compose -p numahop -f env/main/docker/docker-compose.yml up
docker compose -p numahop -f run/main/docker/docker-compose.yml up

# Or using the make file
make all-up
```

You now should be able to access your NumaHOP instance at [http://localhost:8080](http://localhost:8080).
You also can consult numahop logs with:
```bash

docker compose -p numahop -f run/main/docker/docker-compose.yml logs 
# Or using the make file
make app-logs
```
To stop all the services:
```bash
docker compose -p numahop -f [docker-compose-yaml] stop

# Or using the make file
make app-stop && make env-stop
# Or
make all-stop
```

If you want to execute a command inside a container:
```bash
docker compose -p numahop exec -it [service-name] -- [command]
# There is no makefile rule in this case as it is not possible to pass arguments to a makefile rule...
# For example to connect to the db use
docker compose -p numahop exec -it numahop-mariadb -- mariadb -Dnumahop -unumahop -pnumahop
```

For developpements it is usefull to be able to reset the data of your composition.
The persisted data in docker is stored inside volumes:
```bash
docker volume ls
```

These volumes can be detached/deleted from the composition:
```bash
docker compose -p numahop -f [compose-yaml] rm -f -s -v
docker volume rm [volume-name]

# Or using the makefile
make all-clean
make reset-all
```
