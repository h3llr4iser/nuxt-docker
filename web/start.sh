#!/usr/bin/env bash
set -e
set -x

yarn build
yarn start --universal
