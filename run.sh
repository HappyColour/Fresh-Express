#! /bin/bash
#! ./run.sh env
#! ./run.sh run
#! chmod 777 ./run.sh
set -e

SHELL_PATH=$(cd `dirname $0`; pwd)

export NVM_DIR=~/.nvm
source ~/.nvm/nvm.sh

copy_file() {
  mkdir -p clientServer
  cp -rf .output clientServer/
  cp -rf .nuxt clientServer/
  cp -rf run.sh clientServer/
}

build_local() {
	echo "over"
}

build_test() {
	nvm use 18.16.0
	pnpm install;
	pnpm test;
  copy_file
}

build_prod() {
	nvm use 18.16.0;
	pnpm install;
	pnpm build;
  copy_file;
}

build_run_prod() {
  NODE_ENV=production node .output/server/index.mjs
}

build_run_test() {
  NODE_ENV=development node .output/server/index.mjs
}

cd $SHELL_PATH
MODE=${1:-"prod"}
"build_${MODE}";