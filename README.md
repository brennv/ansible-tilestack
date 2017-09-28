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

- At the moment, only Python 2.7.x is supported.
- Postgres 9.5+ with postgis enabled.
- Optional: Redis for caching.

### Installing tilestack

Adjust the configuration files in `/config` as needed and start the install:

```
source install.sh
```

## Running

```
python tileserver/__init__.py config.yaml
```

Check test endpoints:

```
source scripts/run-tests.sh
```
