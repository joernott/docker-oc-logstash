# Docker image: Logstash 5/6 on CentOS 7
Running Logstash 5 or 6 on CentOS 7/Oracle Java 9

The version tagged 5 runs Logstash 5.x, version 6 or latest refers to Logstash 6.x.

The application runs as non-privileged  user/group logstash/elk.

## Usage:
### Simple usage
```
docker run -d -e DEPLOY_DEFAULT_SETTINGS=yes \
    -v /data/logstash/etc/logstash:/etc/logstash \
    registry.ott-consult.de/oc/logstash:latest
```
