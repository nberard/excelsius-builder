#!/bin/bash
ARM_ARCH=${1:-}
if [ ${ARM_ARCH} ]; then
    echo "ARM"
else
    echo "NOT"
fi
echo "COMPOSE_API_VERSION=1.18 docker-compose -f docker-compose${ARM_ARCH}.yml up -d"
