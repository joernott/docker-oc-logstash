#!/bin/bash
set -e

docker build -f Dockerfile5 -t registry.ott-consult.de/oc/logstash:5 .
docker push registry.ott-consult.de/oc/logstash:5
docker build -f Dockerfile6 -t registry.ott-consult.de/oc/logstash:6 .
docker push registry.ott-consult.de/oc/logstash:6
docker tag registry.ott-consult.de/oc/logstash:6 registry.ott-consult.de/oc/logstash:latest
docker push registry.ott-consult.de/oc/logstash:6
docker push registry.ott-consult.de/oc/logstash:latest

