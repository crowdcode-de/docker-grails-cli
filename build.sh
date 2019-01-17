#!/bin/sh
# Build a docker image containing tools required to build java, groovy and grails 2.x.x
#Set the required grails2 version
export GRAILS_VERSION='2.2.1'
docker build -t "crowdcode/grails:${GRAILS_VERSION}-openjdk6" --build-arg GRAILS_VERSION=${GRAILS_VERSION} .
