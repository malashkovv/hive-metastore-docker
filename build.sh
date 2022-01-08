#!/usr/bin/env bash

export HIVE_METASTORE_VERSION=3.0.0
export HADOOP_VERSION=3.2.0

docker build \
  --build-arg METASTORE_VERSION=$HIVE_METASTORE_VERSION \
  --build-arg HADOOP_VERSION=$HADOOP_VERSION \
  -t vmalashkov/apache-hive-metastore:$HIVE_METASTORE_VERSION-h${HADOOP_VERSION} .
