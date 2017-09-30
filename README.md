# tilestack

[![Build Status](https://travis-ci.org/brennv/tilestack.svg?branch=master)](https://travis-ci.org/brennv/tilestack)

This builds the awesome [tilezen](https://github.com/tilezen) stack and includes
these repos as git submodules. Master here tracks the most recent stable releases,
currently:

- [tileserver v2.1.0](https://github.com/tilezen/tileserver/tree/v2.1.0)
- [tilequeue v1.9.0](https://github.com/tilezen/tilequeue/tree/v1.9.0)
- [vector-datasource v1.4.0](https://github.com/tilezen/vector-datasource/tree/v1.4.0)


## Install

### Prerequisites

- At the moment, only Python 2.7.x is supported.
- Postgres 9.5+ with postgis enabled. User & DB aligned with `config.sh`.
- Optional: Redis for caching.

### Installing tilestack

Recursively clone, modify the configs as needed and start the install:

```
git clone --recursive https://github.com/brennv/tilestack.git
nano config.sh && source config.sh
source install.sh
```

Loading the OpenStreetMap data will take 5-10 minutes.


## Running

## Testing

## Development
