# Installation.

## Obtaining NumaHOP

Numahop can be obtained using the following 3 mehtods:
- From the release pages. (advised)
- Compiling from source.
- Dockerised solution. See the [Docker Usage](./docker_usage.md) chapter.

### Compiling from source

Progams needed:
- git
- a distribution of the jdk 17
- just (optional)
- maven > 3.6.0 (optional if using `mvnw`)

Before the installation process, clone the git repository and cd into it:
<!-- TODO: Change this when the repo is moved to the numahop instance -->
```bash
git clone https://github.com/NumaHOP/NumaHOP.git numahop && cd numahop
```
If you don't have maven installed you can run this command:
```bash
chmod +x mvnw
```
And use `./mvnw` instead of `mvn`.

Then you can run the compilation command for numahop:
```bash
mvn package 

# Or using the just file
just d
```

If you have errors during compilation run `mvn -Dfast=true package`.
It disables all exections non needed to build numahop such as tests, code analysis and formating.
Once the compilation succeds a file `./target/numahop-yy.mm.jar` should be present in the directory. 
Move this file at this path: `/opt/pgcn/numahop.jar`. The name of the war is not important but its location is.
Once that is done we can run NumaHOP. It should launch and crash rather quickly.

## Runtime Dependencies

Now use your package manager to install the necessary runtime dependencies for numahop:
- mariadb > 10.*
- elasticsearch > 8.*
- open-jdk-17
- tesseract-ocr-all
- libimage-exiftool-perl
- imagemagick
- libyaz4j (optional)

The `libyaz4j` dependency is only used by the Z39.50 search queries. If you don't need the Z39.50 queries you can skip this dependency.


## Database

Now we will create an empty database and a user for numahop. NumaHOP creates its tables automatically no need to create them yourself. See the [liquibase chapter](../database/index.md) for more information.
<!-- i18n:ignore -->
```bash
mariadb
```
Run this suite of commands remplacing the placeholders (`<db-name>`, `<db-user-name>` and `<db-user-pwd>`) for your setup note these as you will need to fill them in the config step.
You should be greeted by this command prompt:
<!-- i18n:ignore -->
```
MariaDB [(none)]>
```
Let's create the database:
<!-- i18n:ignore -->
```sql
CREATE DATABASE <db-name>;
```

Then the user NumaHOP will use to connect to the database:
<!-- i18n:ignore -->
```sql
CREATE USER '<db-user-name>'@localhost IDENTIFIED BY <db-user-pwd>;
GRANT CREATE, ALTER, DROP, INSERT, SELECT, UPDATE, INDEX, DELETE ON '<db-name>'.* TO '<db-user-name>'@localhost;
FLUSH PRIVILEGES;
```
Note these are the minimal rights the user NumaHOP will use needs to edit the database.

You can verify that all the information is well defined by running `SHOW DATABASES;` and `SHOW GRANTS FOR '<db-user-name>'@localhost`.
NumaHOP uses an orm with a migration tool and will automatically create all the tables it needs for you.

## Elastic Search
Just install elastic search and folow this [documentation][1]. And make sure it is accessible from where you want to install numahop either by localhost or an url.

TODO: Maybe recomand some default configuration for using it with NumaHOP.

## Mail Server (Optional)
NumaHOP needs a smtp mail server for sending emails. It expects it on the port 25 on localhost without auth and security by default. If you want to use a distant server or change the default settings [see](./config.md#mail) in the config chapter.

## Numahop Config
Now we need to configure numahop. See the configuration guide [here](./config.md).
After this configuration step you should have an instance that launches successfully.

## If you want to manage Numahop using `systemd`
Create the file `/etc/systemd/system/numahop.service`:
<!-- i18n:ignore -->
```toml
[Unit]
Description=NumaHOP
After=syslog.target

[Service]
ExecStart=/opt/pgcn/numahop.jar --spring.profiles.active=prod # for activating certain spring profiles see the config chapter for more information.
SuccessExitStatus=143
StandardOutput=null
User=numahop 

[Install]
WantedBy=multi-user.target
```

Then use (These may be needed to be run as root):
<!-- i18n:ignore -->
```bash
systemctl daemon-reload # After adding/modifying the file
systemctl start numahop # For starting numahop
systemctl stop numahop # For stoping numahop
```

If you don't have root privileges you can instead create the file `~/.config/systemd/user/numahop.service` with the content: 
<!-- i18n:ignore -->
```toml
[Unit]
Description=NumaHOP
After=syslog.target

[Service]
ExecStart=/opt/pgcn/numahop.jar --spring.profiles.active=prod
SuccessExitStatus=143
StandardOutput=null

[Install]
WantedBy=multi-user.target
```
And instead use:
<!-- i18n:ignore -->
```bash
systemctl --user daemon-reload # After adding/modifying the file
systemctl --user start numahop # For starting numahop
systemctl --user stop numahop # For stoping numahop
```

If everything worked correctly you can access the numahop graphical interface by connecting to your server.
You can now go to the [Post-Installation](./post_install.md) chapter.

  [1]: https://www.elastic.co/guide/en/elasticsearch/reference/current/install-elasticsearch.html "Elastic Documentation"

