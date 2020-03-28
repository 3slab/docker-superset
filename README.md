# Apache Superset Docker Image

Non official docker image for [Apache Superset](https://superset.apache.org/)

## Usage

Login to the 3slab docker hub repository :

```
docker login 3slab
```

Then build the version you want to push :

```
./build.sh <apache superset release tag>
```

It builds the following image :

* [A lean image based on official Dockerfile](https://github.com/apache/incubator-superset/blob/master/Dockerfile)
* [An image with a Mysql connector](./Dockerfile-mysql.template)
* [An image with a PostgreSQL connector](./Dockerfile-pgsql.template)