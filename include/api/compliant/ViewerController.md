# `/api/rest/viewer/document`
# Relevant files
- ViewerController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/viewer/document/{identifier}/manifest`|GET|getManifestViewer|
|`/viewer/document/sample/{identifier}/manifest`|GET|getSampledManifestViewer|
|`/viewer/document/{identifier}/{pageNumber}/info.json`|GET|getFileInfos|
|`/viewer/document/{identifier}/{pageNumber}/full/{dim1}/{dim2}/default.jpg`|GET|getDefault|
|`/viewer/document/{identifier}/{pageNumber}/{args1}/{args2}/{test}/default.jpg`|GET|getZooms|
|`/viewer/document/{identifier}/thumbnail/{pageNumber}/thumb.jpg`|GET|getThumbnail|
|`/viewer/document/{identifier}/master/{pageNumber}`|GET|getMaster|
|`/viewer/document/{identifier}/master`|GET|getPdfMaster|
|`/viewer/document/{identifier}/toc`|GET|getTableOfContent|