# Installation.

Numahop supports 2 mehtod of installation:
- Dockerised solution.
- Normal installation.

Before the installation process, clone the git repository and cd into it:
<!-- TODO: Change this when the repo is moved to the numahop instance -->
```
git clone https://github.com/biblibre/NumaHOP-code.git numahop && cd numahop
```
If you don't have maven installed you can run this command:
```
chmod +x mvnw
```
And use `./mvnw` instead of `mvn`.

# Docker Installation.
The Dockerised solution is easier to get running. More of the installation is automatized.

## Dependencies
Please check you have these packages installed before the installation.
```
docker
open-jdk-17
```
In order to launch a local docker build of Numahop
you can run the command:
```bash
# Using the makefile.
make setup-docker
make build-all

# Running the commands directly
docker build -t numahop-run src/main/docker --target run
mvn clean compile -Pdocker # Optionaly add: -Dfast=true
```
The `-Dfast=true` enables a maven profile wich disables tests and checks for faster compilation. 
If you have errors originating from these checks you can either try to format the code that fails
or just use the flag to disable the check.

After this you should be able to find an image named `numahop` in your local docker instance.

You can run this instance localy by running:
```bash
# Using the makefile
make all-up
# Running the commands directly
docker compose -p numahop -f env/main/docker/docker-compose.yml up -d
docker compose -p numahop -f run/main/docker/docker-compose.yml up -d
```
If you connect to `localhost:8080` you should see the login prompt of NumaHOP.

# Normal Installation.
## Dependencies
Now use your package manager to install the necessary dependencies to numahop:
```
mariadb > 10.*
elasticsearch > 8.*
open-jdk-17
tesseract-ocr-all
libimage-exiftool-perl
imagemagick
```

## Compilation
Then you can run the compilation command for numahop:
```bash
mvn package # Optionaly add: -Dfast=true
```
If you have errors during compilation run `mvn -Dfast=true package`.
It disables all exections non needed to build numahop such as tests, code analysis and formating.
Once the compilation succeds a file `./target/numahop-<semver>.war` should be present in the directory. 
Move this file at this path: `/opt/pgcn/numahop.war`. The name of the war is not important but its location is.
Once that is done we can run NumaHOP. It should launch and crash rather quickly.

## Database
Now we will create an empty database and a user for numahop. 
run this suite of commands remplacing the placeholders (`db-name`, `db-user-name` and `db-user-pwd`) for your setup:
```bash
mariadb
```
You should be greeted by this command prompt:
```
MariaDB [(none)]>
```
Let's create the database:
```sql
CREATE DATABASE <db-name>;
```

Then the user NumaHOP will use to connect to the database:
```sql
CREATE USER '<db-user-name>'@localhost IDENTIFIED BY <db-user-pwd>;
GRANT CREATE, ALTER, DROP, INSERT, SELECT, UPDATE, INDEX, DELETE ON '<db-name>'.* TO '<db-user-name>'@localhost;
FLUSH PRIVILEGES;
```
Note these are the minimal rights the numahop user needs to edit the database.

You can verify that all the information is well defined by running `SHOW DATABASES;` and `SHOW GRANTS FOR '<db-user-name>'@localhost`.
NumaHOP uses an orm with a changelog and will automatically create all the tables it needs for you.

## Elastic Search
Just install elastic search and folow this [documentation](https://www.elastic.co/guide/en/elasticsearch/reference/current/install-elasticsearch.html). And make sure it is accessible from where you want to install numahop either by localhost or an url.

## Mail Server (Optional)
NumaHOP needs a smtp mail server for sending emails. It expects it on the port 25 on localhost without auth and security by default. If you want to use a distant server or change the default settings [see](./config.md#mail) in the config chapter.

## Numahop Config
See how to configure numahop [here](./config.md).
After this configuration step you should have an instance that launches successfully.

## If you want to manage Numahop using `systemd`.
Create the file `/etc/systemd/system/numahop.service` with the content:
```toml
[Unit]
Description=NumaHOP
After=syslog.target

[Service]
ExecStart=/opt/pgcn/numahop.war # --spring.profiles.active=... for activating certain profiles
SuccessExitStatus=143
StandardOutput=null
User=numahop # The user to use 

[Install]
WantedBy=multi-user.target
```

Then use:
```bash
systemctl daemon-reload # After adding/modifying the file
systemctl start numahop # For starting numahop
systemctl stop numahop # For stoping numahop
```

If you don't have root privileges you can instead create the file `~/.config/systemd/user/numahop.service` with the content: 
```toml
[Unit]
Description=NumaHOP
After=syslog.target

[Service]
ExecStart=/opt/pgcn/numahop.war # --spring.profiles.active=... for activating centrain profiles.
SuccessExitStatus=143
StandardOutput=null

[Install]
WantedBy=multi-user.target
```
And instead use:
```bash
systemctl --user daemon-reload # After adding/modifying the file
systemctl --user start numahop # For starting numahop
systemctl --user stop numahop # For stoping numahop
```

If everything worked correctly you can access the numahop graphical interface by connecting to your server.
You can now go to the [Post-Installation](./post_install.md) chapter.
