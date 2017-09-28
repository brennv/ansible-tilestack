# install postgres / postgis
sudo apt-get install postgresql postgresql-contrib postgis postgresql-9.5-postgis-2.2

# If you are setting up PostgreSQL for a single-user install, you may want to
# create a new database user (i.e: whoami). You can skip this next step if you
# already have your database roles established.

#     sudo -u postgres psql
#     CREATE USER [your username] SUPERUSER PASSWORD 'your password here';
#     \q

# TODO use env vars in psql


# Create the database and enable postgis.

#     createdb -E UTF-8 -T template0 $PGDB
#     psql -c 'CREATE EXTENSION postgis; CREATE EXTENSION hstore;' -d $PGDB -U $PGUSER

# TODO Find and check pg_hba.conf
