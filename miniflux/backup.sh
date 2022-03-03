#/bin/bash

docker-compose exec -e PGPASSWORD=secret db /usr/bin/pg_dump -U miniflux miniflux | gzip -9 > ./backups/postgres-backup.sql.gz 
