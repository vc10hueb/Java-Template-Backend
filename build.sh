#!/bin/bash

echo "This build script requires mvn, docker and docker compose."

rm -Rf target
mvn clean package

dock-compose build
