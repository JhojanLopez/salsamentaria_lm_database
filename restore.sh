#!/bin/bash

set -e

pg_restore -U "$POSTGRES_USER" -d "$POSTGRES_DB" /docker-entrypoint-initdb.d/salsamentaria_lm.backup
