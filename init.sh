#!/bin/bash

source /root/.sdkman/bin/sdkman-init.sh
sdk install java $(cat GRAALVM_VERSION)
sdk install gradle $(cat GRADLE_VERSION)
export GRAALVM_VERSION="$(cat GRAALVM_VERSION)"
export GRADLE_VERSION="$(cat GRADLE_VERSION)"