#!/usr/bin/env bash
apt update
apt remove -y docker docker-engine docker.io
apt install -y docker.io

git clone --depth=50 https://github.com/Otus-DevOps-2019-08/pksmall_microservices.git Otus-DevOps-2019-08/pksmall_microservices
cd Otus-DevOps-2019-08/pksmall_microservices
git fetch origin +refs/pull/5/merge:
git checkout -qf FETCH_HEAD

export TRAVIS_BRANCH="docker-4"
curl https://raw.githubusercontent.com/express42/otus-homeworks/2019-08/run.sh | bash
