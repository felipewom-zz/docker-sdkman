#!/bin/bash

source /root/.sdkman/bin/sdkman-init.sh
sdk install java $(cat GRAALVM_VERSION) && sdk use java $(cat GRAALVM_VERSION)
export GRAALVM_VERSION="$(cat GRAALVM_VERSION)"