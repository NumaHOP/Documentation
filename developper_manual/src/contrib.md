# Contributing to numahop.

> If you plan to contribute to numahop you might want to read the [coding guidelines][1].

## Developpement environement.

The easiest way to test developpements locally is to use the dockerised version.

The makefile makes management of the developpement loop rather easy.
You can see the full list of rules provided by the Makefile by running `make list`.
If you chose to use the docker you should run `make setup-docker` before running `make build-docker`.

You can see the NumaHOP logs with `make app-logs`.

Also the formating of both the front-end and backend is handled in the makefile with `make fmt`.

The lifecycle of the composition is manage with `app-<action>` and `env-<action>` rules.
The actions provided by the makefile are:
- up: Start all containers and start their services.
- stop: Stop the services keeping the containers up.
- down: Stop the containers.
- clean: Same as down detaching the volumes allowing for their deletion.

The makefile also provides ways to manage the mounted volumes in the docker images.
For example:
- to reset the db you can run `make reset-db`.
- to get a clean reinstall of Numahop `make reset-all`.
Note the volumes can only be reset by unmouting them from the containers.


  [1]: https://github.com/biblibre/NumaHOP-code/
