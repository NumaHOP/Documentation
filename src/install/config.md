# NumaHOP Configuration.
NumaHOP is configured in yaml files called `application.yml` or `application-<profile>.yml`.

When NumaHOP is started it search and load configs in this order:
- Inside the packaged war/jar ressources.
- In the folder `./config`(relative to its current directory).

## Profiles
There can be multiple files sourced by NumaHOP with a profile system. 
First the `application.yml` is sourced and then the profiles one.
Each load overrides the keys redefined.

To activate a profile the flag `--spring.profiles.active` can be passed to the war:
```bash
# Launch numahop with the profiles dev and prod activated. The keys defined in a later profile overide the keys defined in a previous one.
./numahop.war --spring.profile.active=dev,prod
```
The resulting files will be sourced in this order:
- Inside the war:
    - `application.yml`
    - `application-dev.yml`
    - `application-prod.yml`
- In the working directory: 
    - `./config/application.yml`
    - `./config/application-dev.yml`
    - `./config/application-prod.yml`

## application.yml
Most of the properties in the yaml files are used either by spring-boot or other dependencies but some are custom.
All uses of custom properties can be found in the codebase using this command: `grep -e "@Value\(\$\{.*\}\)"`.

### Important/UseFull properties to define

#### Instances
Each establishments using numahop must be declared, choose an id for each libraries using Numahop and sotre it there.
```yaml
instance:
    libraries: lib1, lib2, lib3
```

<details>
	<summary>Utilisations</summary>
    <ul>
        <li>src/main/java/fr/progilone/pgcn/config/BinaryStorageConfiguration.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/delivery/DeliveryReportingService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/check/MetaDatasCheckService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/document/ui/UIDocUnitService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/exchange/cines/CinesRequestHandlerService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/exchange/cines/ExportCinesService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/exchange/cines/ExportSipService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/exchange/omeka/OmekaService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/exchange/digitallibrary/DigitalLibraryDiffusionRequestHandlerService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/storage/FileCleaningManager.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/storage/AltoService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/storage/FileStorageManager.java</li>
    </ul>
</details>

#### Admin
The admin is the only account present after the installation. It is very important to define:
```yaml
admin:
    login: # default: admin
    password: # Important to override. default: hash of "password"
```
The password is encrypted using the bcrypt method you can get a good password to encrypt like this:
```bash
head /dev/urandom | tr -dc "a-zA-Z0-9"| fold -w 20 | head -n 1
```
Then encrypt it with a bcrypt implementation. But pay attention not all bcrypt algorithms are secure, for example if the resulting hash starts with `$2a$` it is not secure.
<details>
	<summary>Uses:</summary>
    <ul>
        <li>src/main/java/fr/progilone/pgcn/service/user/ui/UIUserService.java</li>
        <li>src/main/java/fr/progilone/pgcn/web/rest_int/InternalAccountResource.java</li>
        <li>src/main/java/fr/progilone/pgcn/security/UserDetailsService.java</li>
    <ul>
</details>

#### Jhipster Remember Me key
This is the key needed to make the rememberme service work. It needs to be unique to your installation.
```yaml
jhipster.security.rememberme.key: # No defaults must be defined.
```
Same as the password you can get a good randomized key like this:
```bash
head /dev/urandom | tr -dc "a-zA-Z0-9"| fold -w 20 | head -n 1
```

<details>
	<summary>Uses:</summary>
    <ul>
        <li>TODO</li>
    <ul>
</details>

#### Database and elasticsearch
The information needed by numahop to connect to the database and elasticsearch.

```yaml
spring:
    datasource:
        url: # The url to access the mariadb data base often: jdbc:mariadb://localhost:3306/<db-name>
        username: # The database user
        password: # The database password
    elasticsearch:
        uris:
            - <uri> # default: http://localhost:9200
            # ...
```

#### Filesystem
These configuration options define where numahop can find the executables it needs, where to put the various files it generates and where to look for files to import.
```yaml
imageMagick:
    convert: # default : /usr/bin/convert
    identify: # default : /usr/bin/identify

exifTool:
    process: # default : /usr/bin/exiftool

tesseract:
    process: # default : /usr/bin/tesseract

storage:
    binaries: # default : /opt/pgcn/DAM/DAM_Repository

nativeLibraries:
    path: # default : /opt/svcmgmt/lib

messaging:
    template:
        path: # default : /opt/pgcn/Messaging/MessagingTemplate


uploadPath:
    condition_report: # default : /opt/pgcn/upload/condition_report
    ead: # default : /opt/pgcn/upload/ead
    import: # default : /opt/pgcn/upload/import
    library: # default : /opt/pgcn/upload/library
    user: # default : /opt/pgcn/upload/user
    template: # default : /opt/pgcn/upload/templates

export:
    ssh:
        knownHosts: # default : /opt/pgcn/config/known_hosts

services:
    cines:
        aip: # default : /opt/pgcn/cines/aip
        cache: # default : /opt/pgcn/cines/cache
        xsd:
            sip: # default : /opt/pgcn/xsd/sip.xsd
    archive:
        alto: # default : /opt/pgcn/archive/alto
        text: # default : /opt/pgcn/archive/text
    metaDatas:
        path: # default : /opt/pgcn/metadatas
    deliveryreporting:
        path: # default : /opt/pgcn/deliveryReporting
    omeka:
        cache: # default : /opt/pgcn/omeka/cache
    ftpexport:
        cache: # default : /opt/pgcn/ftpexport/cache
    digitalLibraryDiffusion:
        cache: # default : /opt/pgcn/digitalLibraryDiffusion/cache
```
<details>
	<summary>Exiftool Uses:</summary>
    <ul>
        <li>src/main/java/fr/progilone/pgcn/service/storage/ExifToolService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/storage/ImageMagickService.java</li>
    </ul>
</details>

<details>
	<summary>Upload Path Uses:</summary>
    <ul>
        <li>src/main/java/fr/progilone/pgcn/service/JasperReportsService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/user/UserService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/library/LibraryService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/document/conditionreport/ConditionReportAttachmentService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/exchange/ead/ExportEadService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/exchange/ImportReportService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/exchange/template/TemplateService.java</li>
    </ul>
</details>
<details>
	<summary>Services Uses:</summary>
    <ul>
        <li>src/main/java/fr/progilone/pgcn/service/delivery/DeliveryReportingService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/check/MetaDatasCheckService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/check/FacileCinesService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/document/ui/UIDocUnitService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/exchange/internetarchive/InternetArchiveService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/exchange/cines/CinesRequestHandlerService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/exchange/cines/ExportCinesService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/exchange/cines/ExportSipService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/exchange/omeka/OmekaService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/exchange/digitallibrary/DigitalLibraryDiffusionRequestHandlerService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/exchange/digitallibrary/DigitalLibraryDiffusionService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/storage/FileCleaningManager.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/storage/AltoService.java</li>
    </ul>
</details>

#### Server
The port used by numahop on the server.
```yaml
server:
    port: # default: 80
```

<details>
	<summary>Uses:</summary>
    <ul>
        <li>src/main/java/fr/progilone/pgcn/web/rest/administration/HealthController.java</li>
    </ul>
</details>

#### Instance
In the `instance` section we can configure the different libraries using this instance of numahop.
```yaml
instance:
    libraries: lib1, lib2, lib3
```

<details>
	<summary>Uses:</summary>
    <ul>
        <li>src/main/java/fr/progilone/pgcn/config/BinaryStorageConfiguration.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/delivery/DeliveryReportingService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/check/MetaDatasCheckService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/document/ui/UIDocUnitService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/exchange/cines/CinesRequestHandlerService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/exchange/cines/ExportCinesService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/exchange/cines/ExportSipService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/exchange/omeka/OmekaService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/exchange/digitallibrary/DigitalLibraryDiffusionRequestHandlerService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/storage/FileCleaningManager.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/storage/AltoService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/storage/FileStorageManager.java</li>
    </ul>
</details>

#### Image Sizes
```yaml
images:
    format:
        default:
            thumbHeight: # default: 150 
            thumbWidth: # default: 150
            viewHeight: # default: 1417
            viewWidth: # default: 982
            printHeight: # default: 2835
            printWidth: # default: 1964
```

<details>
	<summary>Uses:</summary>
    <ul>
        <li>src/main/java/fr/progilone/pgcn/service/util/DefaultFileFormats.java</li>
    </ul>
</details>

#### Cron jobs.
Some services are annotated with `@Scheduled`. These are cron jobs configured in the cron section:

```yaml
cron:
    removeOldTokens: # default: 0 0 0 * * ?
    cleanLocks: # default: 0 30 0 * * *
    rebuildIndex: # Rebuild elastic search index. default: 0 40 0 * * *
    cleanDeliveryFiles: # default: 0 0 1 * * ?
    cinesExport: # Try to export eligible document units to the CINES. default: 0 30 1 * * ?
    localExport: # Try to export eligible document units via SFTP. default: 0 0 4 * * ?
    cleanTemporaryFiles: # Clean up temporary files for each library. default: 0 0 2 * * ?
    internetArchiveExport: # Try to export eligible document units to Internet Archive. default: 0 26 17 * * ?
    gestDeliveredFiles: # Save or delete the archived documents. default: 0 00 18 * * SAT
    cinesUpdateStatus: # Download status of CINES export from the mailbox. default: 0 10 * * * *
    omekaExport: # Try to export eligible document units to an Omeka instance. default: 0 0 3 * * ?
    cleanExportCaches: # default: 0 30 6 * * ?
    docUnitUpdateArk: # Retrieve Internet archive urls of archived documents. default: 0 0 6 * * ?
    digitalLibraryExport: # default: 0 0 3 * * ?
```

The value is a [cron expression](https://docs.spring.io/spring-framework/reference/integration/scheduling.html#scheduling-cron-expression) used to configure when to run the job.
<details>
    <summary>Uses:</summary>
    <ul>
        <li>src/main/java/fr/progilone/pgcn/service/storage/FileCleaningManager.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/exchange/digitallibrary/DigitalLibraryDiffusionRequestHandlerService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/exchange/exportftp/ExportFtpService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/exchange/omeka/OmekaRequestHandlerService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/exchange/cines/CinesRequestHandlerService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/es/IndexManagerService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/LockService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/exchange/internetarchive/InternetArchiveServiceAsync.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/document/DocUnitService.java</li>
        <li>src/main/java/fr/progilone/pgcn/service/user/UserService.java</li>
    </ul>
</details>

#### Mail
```yaml
spring:
    mail:
        host: # default: localhost
        port: # default: 25
        user:
        password:
        from: # default: contact-numahop@numahop.fr
        tls: # default: false
        auth: # default: false
        activated: # default: false
```
<details>
    <summary>Uses:</summary>
    <ul>
        <li>TODO</li>
    </ul>
</details>

