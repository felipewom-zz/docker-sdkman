#!/bin/bash

source /root/.sdkman/bin/sdkman-init.sh
sdk use java $(cat GRAALVM_VERSION)
gu install native-image
ln -s /root/.sdkman/candidates/java/$(cat GRAALVM_VERSION)/bin/native-image /sbin/native-image
ln -s /root/.sdkman/candidates/gradle/$(cat GRADLE_VERSION)/bin/gradle /sbin/gradle