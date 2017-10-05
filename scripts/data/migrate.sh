# If you are on a particular release and would like to migrate your database to
# a newer one, you'll want to run the appropriate migrations. Database migrations
# are required when the database queries & functions that select what map content
# should be included in tiles change.

# Note that the migration for each release in between will need to be run
# individually. For example, if you are on v0.5.0 and would like to upgrade to
# v0.7.0, you'll want to run the v0.6.0 and v0.7.0 migrations (we don't provide
# "combo" migrations).

# in this example, we're on v0.5.0 - checkout the migration to v0.6.0
#   cd vector-datasource
#   git submodule checkout v0.6.0
#   bash data/migrations/run_migrations.sh -d osm
