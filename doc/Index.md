# Documentation Technique de Numahop

## Build NumaHOP
### MakeFile
Pour build NumaHOP on peut utiliser le make file. 
```bash
make build
```
Il est aussi possible de build une image docker:
```bash
make docker-build
```
Cependant le makefile permet de gerer la composition des images plus facilement avec les commandes de la forme:
```bash
make <target>-<action>
```
Il y a 3 targets disponible:
- `env`: Target uniquement les images pour MariaDB, le serveur de mail et ElasticSearch.
- `app`: Target uniquement l'image de numahop.
- `all`: `env` et `app` reunis.

Il y a 5 action que l'ont peut lancer: 
- `up`: Lance les images.
- `logs`: Affiche les logs.
- `stop`: Stop les images.
- `down`: Supprime les images du registre local.
- `clean`: Supprime les images du registre local et les volumes attaches.

### Maven + Docker
TODO: Explain more in depth how to build without the make file.

## Architecture de NumaHOP
TODO: Mermaid graph explaining the architecture.
```mermaid
---
config:
    layout: elk
    elk:
        mergeEdges: true
        nodePlacementStrategy: NETWORK_SIMPLEX
---
flowchart TB
    subgraph fr[Front-End]
        direction LR
        A[Angular web app] 
    end
    subgraph exp[Export Targets]
        direction LR
        omeka[Omeka]
        cines[Cines]
        archive[Internet Archive]
        sftp[File Transfer]
    end
    smtp[Mails]
    subgraph be[BackEnd]
        direction LR
        subgraph java[Java Application]
            direction LR;
            cont[Rest Controllers]
            ser(Services)
            rep[Repository]
        end
        es[Elastic Search]
        db[("MermaidDB")]
        fs@{ shape: lin-cyl, label: "disk storage"}
        rep <--> es <--> db & fs
        cont <--> ser <--> rep <--> db & fs
    end
    A <-->|HTTP| cont
    ser <--> |Export Protocols| exp
    ser --> smtp
```

# Configuration de NumaHOP
Toute la configuration de numahop se fait depuis un fichier appelé `application.yml`.

Certains services du back-end de NumaHOP peuvent se configurer dynamiquement. Ces services on des routes http ou il est possible de telecharger et modifier leurs configuration respectives.

## application.yml
Toute les utilisation des options peuvent facilement se retrouver dans le code java avec: `grep -e "@Value\(\$\{.*\}\)"`.

### Logs
```yaml
loging:
    file:
        name: <path>
```
../numahop/src/main/java/fr/progilone/pgcn/config/LoggingAspectConfiguration.java:    @Value("${logging.warnDuration}")
../numahop/src/main/java/fr/progilone/pgcn/service/administration/logs/AdminLogsService.java:    @Value("${logging.file.name}")

### Ssh Forwarding

```yaml
sshForwarding:
    enabled:
    strictHostKeyChecking:
    knownHosts:
    server:
    port:
    user:
    password:
    elasticsearch:
        remoteServer:
        localPort:
        remotePort:
    database:
        remoteServer:
        localPort:
        remotePort:
```
Utilisations:
- src/main/java/fr/progilone/pgcn/config/SshPortForwardingConfigurer.java

## Instance
Dans section instance on peut configurer les differentes libraries presentes sur cette instance de NumaHOP.
```yaml
instance:
    libraries: lib1, lib2, lib3
```

Utilisations:
- src/main/java/fr/progilone/pgcn/config/BinaryStorageConfiguration.java
- src/main/java/fr/progilone/pgcn/service/delivery/DeliveryReportingService.java
- src/main/java/fr/progilone/pgcn/service/check/MetaDatasCheckService.java
- src/main/java/fr/progilone/pgcn/service/document/ui/UIDocUnitService.java
- src/main/java/fr/progilone/pgcn/service/exchange/cines/CinesRequestHandlerService.java
- src/main/java/fr/progilone/pgcn/service/exchange/cines/ExportCinesService.java
- src/main/java/fr/progilone/pgcn/service/exchange/cines/ExportSipService.java
- src/main/java/fr/progilone/pgcn/service/exchange/omeka/OmekaService.java
- src/main/java/fr/progilone/pgcn/service/exchange/digitallibrary/DigitalLibraryDiffusionRequestHandlerService.java
- src/main/java/fr/progilone/pgcn/service/storage/FileCleaningManager.java
- src/main/java/fr/progilone/pgcn/service/storage/AltoService.java
- src/main/java/fr/progilone/pgcn/service/storage/FileStorageManager.java

## Services
```yaml
services:
    deliveryreporting.path:
    cines:
        aip:
        cache:
        facile:
        updating:
            cronenabled:
        xsd:
            sip:
    metaDatas:
        path:
    ftpexport:
        cache:
    omeka:
        cache:
    digitalLibraryDiffusion:
        cache:
    archive:
        alto:
        text:
```

Utilisations:
- src/main/java/fr/progilone/pgcn/service/delivery/DeliveryReportingService.java
- src/main/java/fr/progilone/pgcn/service/check/MetaDatasCheckService.java
- src/main/java/fr/progilone/pgcn/service/check/FacileCinesService.java
- src/main/java/fr/progilone/pgcn/service/document/ui/UIDocUnitService.java
- src/main/java/fr/progilone/pgcn/service/exchange/internetarchive/InternetArchiveService.java
- src/main/java/fr/progilone/pgcn/service/exchange/cines/CinesRequestHandlerService.java
- src/main/java/fr/progilone/pgcn/service/exchange/cines/CinesRequestHandlerService.java
- src/main/java/fr/progilone/pgcn/service/exchange/cines/CinesRequestHandlerService.java
- src/main/java/fr/progilone/pgcn/service/exchange/cines/ExportCinesService.java
- src/main/java/fr/progilone/pgcn/service/exchange/cines/ExportCinesService.java
- src/main/java/fr/progilone/pgcn/service/exchange/cines/ExportSipService.java
- src/main/java/fr/progilone/pgcn/service/exchange/cines/ExportSipService.java
- src/main/java/fr/progilone/pgcn/service/exchange/omeka/OmekaService.java
- src/main/java/fr/progilone/pgcn/service/exchange/digitallibrary/DigitalLibraryDiffusionRequestHandlerService.java
- src/main/java/fr/progilone/pgcn/service/exchange/digitallibrary/DigitalLibraryDiffusionService.java
- src/main/java/fr/progilone/pgcn/service/storage/FileCleaningManager.java
- src/main/java/fr/progilone/pgcn/service/storage/FileCleaningManager.java
- src/main/java/fr/progilone/pgcn/service/storage/FileCleaningManager.java
- src/main/java/fr/progilone/pgcn/service/storage/AltoService.java
- src/main/java/fr/progilone/pgcn/service/storage/AltoService.java

## ElasticSearch
```yaml
elasticsearch:
    bulk_size:
```

src/main/java/fr/progilone/pgcn/service/es/EsDeliveryService.java
src/main/java/fr/progilone/pgcn/service/es/EsDeliveryService.java
src/main/java/fr/progilone/pgcn/service/es/EsConditionReportService.java
src/main/java/fr/progilone/pgcn/service/es/EsTrainService.java
src/main/java/fr/progilone/pgcn/service/es/EsLotService.java
src/main/java/fr/progilone/pgcn/service/es/EsDocUnitService.java
src/main/java/fr/progilone/pgcn/service/es/EsProjectService.java
src/main/java/fr/progilone/pgcn/service/exchange/AbstractImportService.java

## Report

src/main/java/fr/progilone/pgcn/service/JasperReportsService.java:    @Value("${report.imagePath}")

## Upload Path
```yaml
uploadPath:
    library:
    user:
    library:
    condition_report:
    template:
    import:
    ead:
```

Utilisations:
- src/main/java/fr/progilone/pgcn/service/JasperReportsService.java
- src/main/java/fr/progilone/pgcn/service/user/UserService.java
- src/main/java/fr/progilone/pgcn/service/library/LibraryService.java
- src/main/java/fr/progilone/pgcn/service/document/conditionreport/ConditionReportAttachmentService.java
- src/main/java/fr/progilone/pgcn/service/exchange/ead/ExportEadService.java
- src/main/java/fr/progilone/pgcn/service/exchange/ImportReportService.java
- src/main/java/fr/progilone/pgcn/service/exchange/template/TemplateService.java

## Admin
```yaml
admin:
    login:
    password:
```

Utilisations:
- src/main/java/fr/progilone/pgcn/service/user/ui/UIUserService.java
- src/main/java/fr/progilone/pgcn/web/rest_int/InternalAccountResource.java
- src/main/java/fr/progilone/pgcn/security/UserDetailsService.java
- src/main/java/fr/progilone/pgcn/security/UserDetailsService.java

## Images
```yaml
images:
    format:
        default:
            thumbHeight:
            thumbWidth:
            viewHeight:
            viewWidth:
            printHeight:
            printWidth:
```

Utilisation:
- src/main/java/fr/progilone/pgcn/service/util/DefaultFileFormats.java
- src/main/java/fr/progilone/pgcn/service/util/DefaultFileFormats.java
- src/main/java/fr/progilone/pgcn/service/util/DefaultFileFormats.java
- src/main/java/fr/progilone/pgcn/service/util/DefaultFileFormats.java
- src/main/java/fr/progilone/pgcn/service/util/DefaultFileFormats.java
- src/main/java/fr/progilone/pgcn/service/util/DefaultFileFormats.java

## Export
```yaml
export:
    rdf:
        default_uri:
        knownHosts:
        privateKey:
        strictHostKeyChecking:
```

Utilisation:
- src/main/java/fr/progilone/pgcn/service/exchange/dc/DocUnitToJenaService.java
- src/main/java/fr/progilone/pgcn/service/exchange/ssh/SftpService.java
- src/main/java/fr/progilone/pgcn/service/exchange/ssh/SftpService.java
- src/main/java/fr/progilone/pgcn/service/exchange/ssh/SftpService.java

## Crypto
```yaml
crypto:
    password:
    salt:
```

Utilisation:
- src/main/java/fr/progilone/pgcn/service/util/CryptoService.java
- src/main/java/fr/progilone/pgcn/service/util/CryptoService.java

## ExifTool
```yaml
exifTool:
    quot_char:
```

Utilisation:
- src/main/java/fr/progilone/pgcn/service/storage/ExifToolService.java
- src/main/java/fr/progilone/pgcn/service/storage/ImageMagickService.java

## Server
```yaml
server:
    port:
```

Utilisation:
- src/main/java/fr/progilone/pgcn/web/rest/administration/HealthController.java

## Info
```yaml
info:
    build:
    artifact:
    name:
    description:
    version:
```

Utilisations:
- src/main/java/fr/progilone/pgcn/web/rest/NumahopController.java
- src/main/java/fr/progilone/pgcn/web/rest/NumahopController.java
- src/main/java/fr/progilone/pgcn/web/rest/NumahopController.java
- src/main/java/fr/progilone/pgcn/web/rest/NumahopController.java

### Spring.
```yaml
spring:
    mail:
        from:
        activated:
```

Utilisations:
- src/main/java/fr/progilone/pgcn/service/MailService.java
- src/main/java/fr/progilone/pgcn/service/MailService.java
- src/main/java/fr/progilone/pgcn/service/document/DigitalDocumentService.java

### Cron jobs.
Certain services sont annotees avec `@Scheduled` dans le code. Ce sont des cron jobs qui peuvent etre configures dans le fichier yml:
```
cron:
    <name>: 0 0 0 * * ?
```
A les cron jobs configurable sont:
- removeOldTokens:
- cleanLocks:
- rebuildIndex: Reconstruit l'index de elastic search.
- cleanDeliveryFiles: 
- cinesExport: Lance l'export des unitees documentaires vers le cines.
- localExport:
- cleanTemporaryFiles:
- internetArchiveExport: 
- gestDeliveredFiles:
- cinesUpdateStatus:
- omekaExport:
- cleanExportCaches:
- docUnitUpdateArk:
- digitalLibraryExport:


### Config dynamique.
D'autres services on une partie de la configuration qui est dynamique cela comprends des cles ssh et autres tokens d'identification.
TODO: Documenter les service configurable dynamiquement.

# Organization du code.
## Back-End. 
_[Liste des dependances java.](./gen/deps)_

La racine du code backend est `src/main/java/fr/progilone/pgcn`.

Dans la racine on trouve ces repertoires: 
- `domain`: Modele des donnees. 
    - _DTO: Data Transfer Object_ Dans l'architecture MVC (Model View Controller) le DTO est l'objet de representation envoye par le _Controller_ que la _View_ doit afficher.
    - Dossier jaxb: Les classes jaxb sont des classes auto generees par les fichier xml. La plupart sont liees a des formats de metadonnes pour l'archivage.
- `repositories`: Abstraction de l'acces des donnees. Normalise les exception.
- `services`: Buisness logic.
- `security`: 
- `web`: REST Api
- `config`:

Dans ces dossier a la racine du code on retrouve des dossier concernant les fonctionalitees des modules:
- `es`: ElasticSearch.
- `user`: Module de gestion des utilisateurs et de leurs droit (different de l'authentification).
- `lot`: Module de gestion des lot. 
- `library`: Module de gestion des libraries. 
- `*configuration`: Modules de gestion des configuration dynamique.
- `document`: Module de gestion des documents.
- `train`: Module de gestion des trains de numerisation.
- `workflow`: Module de gestion des workflow.
- ``:

## Front-End
Le code du front-end se trouve a `src/main/webapp`.

# L'archivage et les metadonnes.

_AIP: Archival Information Package._
Decris un fichier apres archivation et les metadonnes accessibles. 

_SIP: Submission Information Package._
Decris un fichier avant archivation avec les metadonnes. 

_[METS: Metadata Encoding & Transmission Standard](https://www.loc.gov/standards/mets/)_
_MARC: Format for bibliographic Data._ [Spec](https://www.loc.gov/marc/bibliographic/)
_DC: Dublin core (set of fifteen "core" elements (properties) for describing resources)._ [Guide Utilisateur](https://www.dublincore.org/resources/userguide/)
ALTO: Analyzed Layout and Text Object.
EAD: Encoded Archival Description.


Tous ces formats sont des documents xml avec des schema soit en XSD soit en DTD. NumaHOP utilise principalement le XSD.

XML Schema:
- DTD: Document Type Definition.
- XSD: XML Schema Definition. ([SPEC](https://www.w3.org/TR/xmlschema11-1/))

_OAI-PMH: Open Archive Protocol for Metadata_ [Spec](https://www.openarchives.org/OAI/openarchivesprotocol.html)
