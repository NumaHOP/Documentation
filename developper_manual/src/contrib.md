# Contributing to numahop.

> If you plan to contribute to numahop you might want to read the [coding guidelines][1].

NumaHOP is open source software and as such accepts contributions from anyone. 
The commiter rights are given by the NumaHOP organization.

As of now the release maintainers are the company BibLibre. Any contributions will most 
likely be reviewed by anyone with commiter rights.

## Developpement environement.

The easiest way to test developpements locally is to use the dockerised version see the [dedicated chapter][2].

A tldr for running NumaHOP through docker using the justfile:
```bash
just d setup
just b docker
just d up
```

You can see the logs with `just d logs`.

  [1]: https://github.com/NumaHOP/NumaHOP/
  [2]: ./install/docker_usage.md
