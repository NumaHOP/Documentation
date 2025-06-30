# Glossary

All definition for terms and acronyms used in this documentation.

**PGCN**: _Plateforme de Gestion de Contenu Numérisé_. Original name of NumaHOP.

**OCR** : _Optical Character Recognition_. Process by which text is recognized on images.

## Metadata standards and file formats.

**METS** : _Metata-Data Encoding and Transportation Standard_. An XML [standard](https://www.loc.gov/standards/mets/) .

**EAD** : _Encoded Archival Description_.

**DC** : _DublinCore_. Small Set of core metadata for bibliographic units. [User Guide](https://www.dublincore.org/resources/userguide/) 

**SIP** : _Submission Information Package_. A file describing a package to be archived.

**AIP** : _Archival Information Package_. A file representing an archived packaged.

**XSD** : _XML Schema Definition_. An XML file describing an XML format allowing an XML parser to verify a file is well formed according to a standard.

**MARC**: Format for bibliographic data. [Spec](https://www.loc.gov/marc/bibliographic/)

**ALTO** :  _Analyzed Layout and Text Object_.

## Protocols.

**OAI-PMH** : _Open Archives Initiative Protocol for Metadata Harvesting_ [Spec](https://www.openarchives.org/OAI/openarchivesprotocol.html)

**Z39.50** : A protocol to searching and retrieving data in databases between servers over TCP/IP.

## NumaHOP Vocabulary.

**Digitalization service provider**: The company(for external digitalization) or service (internal digitalization) doing the digitalization process.

**Document Unit**: Also referred as `Doc Unit` or `DU`. A Document or part of a document for collections to be processed by NumaHOP.

**Workflow**: Steps the Document Unit takes trough NumaHOP. Can be defined at the project level, or the bundle level.

**Notice**: Bibliographic meta-datas attached to a DU.

**Condition Report**: A check of the state of the document after it was manipulated during the digitalization process.

**Delivery**: The step where the digitalized documents are deposited into NumaHOP and attached to the correct Document Unit.

**Import**: The step where we create the Document Unit.

### Grouping of Document Units.
**Project**: A project is usually a set of documents to be digitalized by the same provider. 

**Bundle**: A physical set of Documentary Units averaging around 20 to 50 documents.

**Train**: As in digitalization train. Smaller set of document for insurance reason.

All sets of grouping are not necessarily useful for all use cases. For smaller volume of documents in a project the train is not as useful.

### Design Pattenrn jargon.

**DTO**: _Data Transfer Object_ an object traveling between the view and the controller.

**Service**: Class containing business logic.

**Repository**: Class abstracting a storage method (database, elasticsearch or file system).

**Mapper**: Class performing mapping from a domain object to another.
