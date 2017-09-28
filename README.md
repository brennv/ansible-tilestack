# tilestack

This builds the [tilezen](https://github.com/tilezen) stack and includes
these repos as git submodules:

- [tileserver](https://github.com/tilezen/tileserver)
- [tilequeue](https://github.com/tilezen/tilequeue)
- [vector-datasource](https://github.com/tilezen/vector-datasource)

[master]() here tracks the most recent stable releases, currently:

- tileserver v2.1.0
- tilequeue v1.9.0
- vector-datasource v1.4.0

[dev]() tracks the latest development in each of the repos on master.

## Install

### Prerequisites

Postgres configured with a user named `osm` and a database named `osm`.

Optional: Redis, for caching responses.

### Installing tilestack
