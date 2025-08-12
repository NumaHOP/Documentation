# File storage in NumaHOP.

NumaHOP stores a good amount of its files on the filesystem.

Here is a list of the services that store files:
- [MetaDatasCheckService](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/service/check/MetaDatasCheckService.java) 
- [DeliveryReportingService](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/service/delivery/DeliveryReportingService.java) 
- [ConditionReportAttachmentService](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/service/document/conditionreport/ConditionReportAttachmentService.java) 
- [ImportReportService](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/service/exchange/ImportReportService.java) 
- [CinesRequestHandlerService](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/service/exchange/cines/CinesRequestHandlerService.java) 
- [ExportCinesService](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/service/exchange/cines/ExportCinesService.java)
- [ExportSipService](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/service/exchange/cines/ExportSipService.java)
- [ExportEadService](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/service/exchange/ead/ExportEadService.java)
- [TemplateService](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/service/exchange/template/TemplateService.java)
- [LibraryService](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/service/library/LibraryService.java)
- [AltoService](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/service/storage/AltoService.java)
- [UserService](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/service/user/UserService.java)


## Clean Up. 

The clean up of these files is handled by the: [FileCleaningManager](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/service/storage/FileCleaningManager.java).

This service defines the following cron jobs:
- `cleanDeliveryFiles`
- `cleanTemporaryFiles`
- `cleanExportCaches`
- `gestDeliveredFiles`

Before suppresion of the files not handled by the cron jobs this service provides the option to export a tarball of the files over ftp at the closure of the lot.
