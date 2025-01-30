# Code organization and structure.

## Back-End. 

The root of the back end code is located at `src/main/java/fr/progilone/pgcn`. 

The logic is split up in two ways. Firstly the logic is split verticaly in the stack by `repositories`, `services` and `controllers` (in ascending order) these are stored inside folders in the root:
- `repositories`: Abstraction of storage methods. Can be stored inside the database or the file system.
- `services`: Core of the busisness logic.
- `web`: REST API containing the the controllers. Makes the interface to the front-end.


Then the logic is split horizontally by modules operating on a spectific primitve. Most of them are pretty straight forward.
All the modules are:
- `es`: ElasticSearch module.
- `user`: Module managing users and their habilities (rights). The authentification is not handled there.
- `train`
- `lot`
- `library`
- `*configuration`: Modules managin dynamic configurations (configuration that can be edited at runtime).
- `workflow`
- `delivery`
- `document`
- `statistics`
- `exchange`: Module managing archiving and diffusion of the document units.
- `sample`: Module managing the sample mode of digitalized documents. (No reason of being a separated module refactor needed).
- `check`: Module managing automatic checks (Not triggered or performed by users).
- `help`: Module managing the help page content.
- `imagemetadata`
- `multilotdelivery`

There are also other folders in the root wich store various configurations as java classes: 
- `security`: The configuration of spring security to allow login and 
- `config`: All configuration classes.

The last folder in the root is the `domain` folder containing the data models organized by modules representing the different object stored in the database. We can also find additional classes in the folders `dto` and `jaxb`. The ones in `dto` are suffixed with `DTO` which are objects sent by the _Controller_ (here a REST Controller) to the _View_ (the front-end) and those contained in `jaxb` are pregenerated classes from schema definitions of the metadata formats used.

## Front-End
The front-end root is located at `src/main/webapp`.

The majority of the functinality is in the folder `script`.
