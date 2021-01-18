#!/usr/bin/env bash

set -e

if [ -x $1 ]
then
	echo './build.sh <apache superset release tag>'
	exit 1
fi

SUPERSET_TAG=$1

sed "s/##RELEASE##/$SUPERSET_TAG/" Dockerfile-mysql.template > Dockerfile
docker build -t 3slab/superset:$SUPERSET_TAG-mysql .
docker push 3slab/superset:$SUPERSET_TAG-mysql

sed "s/##RELEASE##/$SUPERSET_TAG/" Dockerfile-pgsql.template > Dockerfile
docker build -t 3slab/superset:$SUPERSET_TAG-pgsql .
docker push 3slab/superset:$SUPERSET_TAG-pgsql