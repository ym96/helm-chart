#!/bin/bash
HPCC_DIR=$1
[[ -z ${HPCC_DIR} ]] && HPCC_DIR=~/HPCC-Platform

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR/docs 2>&1 > /dev/null

helm package ${HPCC_DIR}/dockerfiles/hpcc/
helm repo index . --url azure-hpcc.github.io/helm-chart/
