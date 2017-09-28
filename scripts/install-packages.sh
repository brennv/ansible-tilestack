# install misc tools
sudo apt-get install git unzip python-yaml python-jinja2
# install tilezen fork of osm2pgsql
sudo apt-add-repository ppa:tilezen
sudo apt-get update
sudo apt-get install osm2pgsql
# install dependencies for serving vector tiles
sudo apt-get install build-essential autoconf libtool pkg-config
sudo apt-get install python-dev python-virtualenv libgeos-dev libpq-dev python-pip python-pil libxml2-dev libxslt-dev
