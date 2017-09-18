#!/bin/sh
ss-local -b 0.0.0.0 -s ${SERVER_IP} -p ${SERVER_PORT} -k ${PASSWORD} -m ${METHOD} -l 1080
polipo -c /polipo.conf
