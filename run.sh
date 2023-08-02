#! /bin/bash
set -e

SHELL_PATH=$(cd `dirname $0`; pwd)

export NVM_DIR=~/.nvm
source ~/.nvm/nvm.sh

copy_file() {
  mkdir -p clientServer
  cp -rf .output clientServer/
  cp -rf .nuxt clientServer/
}

build_dev() {
	nvm use 18.16.0
	pnpm install;
	pnpm build;
  copy_file
}

build_prod() {
	nvm use 18.16.0;
	pnpm install;
	pnpm build;
  copy_file;
}

build_run() {
  node .output/server/index.mjs
}

cd $SHELL_PATH
MODE=${1:-"local"}
"build_${MODE}";