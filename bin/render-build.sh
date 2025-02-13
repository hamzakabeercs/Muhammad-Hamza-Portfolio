#!/usr/bin/env bash
set -o errexit

bundle install
yarn install --check-files
rails db:migrate
rails assets:precompile
