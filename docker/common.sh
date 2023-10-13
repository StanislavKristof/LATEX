#!/usr/bin/env bash

# Fail on error and unset variables.
set -eu -o pipefail

PROJECT_NAME="Human_Pose_Estimation_In_Football_Images"
PROJECT_NAME_LOWER=`echo ${PROJECT_NAME} | tr '[:upper:]' '[:lower:]'`

IMAGE_TAG="${IMAGE_TAG:-${PROJECT_NAME_LOWER}}"