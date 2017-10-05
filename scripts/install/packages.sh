# install misc tools
sudo apt-get -y install git unzip python-yaml python-jinja2
# install tilezen fork of osm2pgsql
sudo apt-add-repository -y ppa:tilezen
sudo apt-get update
sudo apt-get -y install osm2pgsql
# install dependencies for serving vector tiles
sudo apt-get -y install build-essential autoconf libtool pkg-config
sudo apt-get -y install python-dev python-virtualenv libgeos-dev libpq-dev python-pip python-pil libxml2-dev libxslt-dev

# create a virtualenv
virtualenv env --python python2.7
source env/bin/activate
# install modules
pip install -r tilequeue/requirements.txt
cd tilequeue && python setup.py develop && cd ..
pip install -r tileserver/requirements.txt
cd tileserver && python setup.py develop && cd ..
pip install -r vector-datasource/requirements.txt
cd vector-datasource && python setup.py develop && cd ..
