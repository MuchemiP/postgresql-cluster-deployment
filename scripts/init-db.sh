#!/bin/bash
psql -h $1 -U postgres -d mydb -f /scripts/create-schema.sql
