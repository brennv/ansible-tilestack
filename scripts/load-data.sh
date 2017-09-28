# Download the OpenStreetMap source data. You can use any PBF, but we use
# a Mapzen metro extract here to get started.

# TODO adjust metros based on configs
wget https://s3.amazonaws.com/metro-extracts.mapzen.com/new-york_new-york.osm.pbf -O data/new-york_new-york.osm.pbf
osm2pgsql -s -C 1024 -S vector-datasource/osm2pgsql.style -j data/new-york_new-york.osm.pbf -H localhost -d $PGDB -U $PGUSER

# Go to data directory, assumes you already changed directories into vector-datasource (above)
cd vector-datasource/data
# Build the Makefiles that we'll use in the next steps
python bootstrap.py
# Download external data
make -f Makefile-import-data
# Import shapefiles into postgis
./import-shapefiles.sh | psql -d $PGDB -U $PGUSER
# Add indexes and any required database updates
./perform-sql-updates.sh -d $PGDB -U $PGUSER
# Clean up local shape files
make -f Makefile-import-data clean

cd ../..

# Load a snapshot of Who's on First neighbourhood data
wget https://s3.amazonaws.com/mapzen-tiles-assets/wof/dev/wof_neighbourhoods.pgdump -O data/wof_neighbourhoods.pgdump
pg_restore --clean -O data/wof_neighbourhoods.pgdump -d $PGDB -U $PGUSER
