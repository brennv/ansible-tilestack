# ansible-tilestack

[![Build Status](https://travis-ci.org/brennv/tilestack.svg?branch=master)](https://travis-ci.org/brennv/tilestack)

This is an effort to automate the remote deployment of a custom postgis tileserver serving OpenStreetMap data for the Bay Area.

The stack integrates 5 repos from [Tilezen](https://github.com/tilezen):

- vector-datasource
- tileserver
- tilequeue
- mapbox-vector-tile
- raw_tiles

### Prerequisites

Install ansible and customize `.hosts`.

```
pip install ansible
nano .hosts
```

## Usage

Deploy a tileserver.

```
ansible-playbook deploy.yml
```

### Debugging

Edit `deploy.yml` and add some v's for verbosity:

```
ansible-playbook -vv deploy.yml
```

### In-progress

- Configuring nginx and gnuicorn for tileserver api
- Exposing postgres for direct access
- Add MongoDB for geojson ETL
