#!/bin/bash
set -e
set -x

source /tmp/install/functions.sh
add_repos elasticsearch${LOGSTASH_VERSION:0:1}
create_user_and_group
install_software logstash-${LOGSTASH_VERSION}
cd ${LS_SETTINGS_DIR}
tar -czf /tmp/install/etc.tar.gz *
cleanup
