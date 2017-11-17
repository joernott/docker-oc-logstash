#!/bin/bash
set -e
set -x

curl -sSo /tmp/install/functions.sh https://raw.githubusercontent.com/joernott/docker-oc-install-library/master/install_functions.sh
source /tmp/install/functions.sh
add_repos elasticsearch${LOGSTASH_VERSION:0:1}
create_user_and_group
install_software logstash-${LOGSTASH_VERSION}
cd ${LS_SETTINGS_DIR}
tar -czf /tmp/install/etc.tar.gz *
cleanup
