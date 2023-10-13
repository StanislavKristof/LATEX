#!/usr/bin/env bash

# Fail on error and unset variables.
set -eu -o pipefail

CWD=$(readlink -e "$(dirname "$0")")
cd "${CWD}/.." || exit $?
source ./docker/common.sh

docker run \
    -it --rm \
    --name "Human Pose Estimation In Football Images-${DEVICE}" \
    -v "${CWD}/..":/workspace/${PROJECT_NAME} \
    ${IMAGE_TAG} 