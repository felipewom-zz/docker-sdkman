#!/bin/bash

source /root/.sdkman/bin/sdkman-init.sh
sdk use java 19.2.0-grl
export JAVA_HOME="/root/.sdkman/candidates/java/19.2.0-grl"
gu install native-image