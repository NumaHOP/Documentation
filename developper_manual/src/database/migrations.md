# Database migrations

NumaHOP uses liquibase community for managing its database migrations. It also serves as an initializer for the empty database during the installation.

The documentation for liquibase is available [here](https://docs.liquibase.com/community).

## How liquibase works

Liquibase creates two additional tables inside the database `DATABASECHANGELOG` and `DATABASECHANGELOGLOCK` it uses these to compare the changelog steps that were applied to the database and the ones it knows about and apply the missing ones.

## How liquibase is setup

The liquibase changelog is split in multiple changelog xml files all referenced in a master changelog.
These are located under `src/main/resources/config/liquibase`

## Adding a changelog

Each developpement that modify the database should add a new individual changelog file and add it at the end of the `master.xml` changelog file.

Please name the changelog file with a descriptive name so that it is representative of what the changelog does.
