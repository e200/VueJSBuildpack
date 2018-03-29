#!/usr/bin/env bash

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testDetect()
{
  mkdir -p ${BUILD_DIR}/src
  mkdir -p ${BUILD_DIR}/build
  mkdir -p ${BUILD_DIR}/config

  touch ${BUILD_DIR}/package.json
  touch ${BUILD_DIR}/index.html

  detect

  assertAppDetected "Detected VueJS project"
}