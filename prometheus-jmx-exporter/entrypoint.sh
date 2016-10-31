#!/bin/bash
if [[ -z "$JMX_HOST" ]]; then
    export JMX_HOST=$(curl "http://rancher-metadata.rancher.internal/2015-07-25/self/host/agent_ip")
fi
/usr/local/bin/confd -onetime -backend env
/opt/start-jmx-scraper.sh