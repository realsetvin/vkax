#!/usr/bin/env bash
#
# Copyright (c) 2018 The Bitcoin Core developers
# Distributed under the MIT software license, see the accompanying
# file COPYING or http://www.opensource.org/licenses/mit-license.php.

export LC_ALL=C.UTF-8

mkdir -p "${BASE_SCRATCH_DIR}"
ccache echo "Creating ccache dir if it didn't already exist"

if [ ! -d ${DIR_QA_ASSETS} ]; then
  git clone https://github.com/bitcoin-core/qa-assets ${DIR_QA_ASSETS}
fi
export DIR_FUZZ_IN=${DIR_QA_ASSETS}/fuzz_seed_corpus/

mkdir -p "${BASE_BUILD_DIR}/sanitizer-output/"
export TSAN_OPTIONS="suppressions=${TRAVIS_BUILD_DIR}/test/sanitizer_suppressions/tsan"
export UBSAN_OPTIONS="suppressions=${TRAVIS_BUILD_DIR}/test/sanitizer_suppressions/ubsan:print_stacktrace=1:halt_on_error=1"
env | grep -E '^(CCACHE_|WINEDEBUG|LC_ALL|BOOST_TEST_RANDOM|CONFIG_SHELL|(TSAN|UBSAN)_OPTIONS)' | tee /tmp/env
if [[ $HOST = *-mingw32 ]]; then
  DOCKER_ADMIN="--cap-add SYS_ADMIN"
elif [[ $BITCOIN_CONFIG = *--with-sanitizers=*address* ]]; then # If ran with (ASan + LSan), Docker needs access to ptrace (https://github.com/google/sanitizers/issues/764)
  DOCKER_ADMIN="--cap-add SYS_PTRACE"
fi

if [ -z "$RUN_CI_ON_HOST" ]; then
  echo "Creating $DOCKER_NAME_TAG container to run in"
  ${CI_RETRY_EXE} docker pull "$DOCKER_NAME_TAG"

  DOCKER_ID=$(docker run $DOCKER_ADMIN -idt --mount type=bind,src=$BASE_BUILD_DIR,dst=$BASE_BUILD_DIR --mount type=bind,src=$CCACHE_DIR,dst=$CCACHE_DIR -w $BASE_BUILD_DIR --env-file /tmp/env $DOCKER_NAME_TAG)

  DOCKER_EXEC () {
    docker exec $DOCKER_ID bash -c "export PATH=$BASE_SCRATCH_DIR/bins/:\$PATH && cd $PWD && $*"
  }
else
  echo "Running on host system without docker wrapper"
  DOCKER_EXEC () {
    bash -c "export PATH=$BASE_SCRATCH_DIR/bins/:\$PATH && cd $PWD && $*"
  }
fi
export -f DOCKER_EXEC

DOCKER_EXEC free -m -h
DOCKER_EXEC echo "Number of CPUs \(nproc\):" \$\(nproc\)

${CI_RETRY_EXE} DOCKER_EXEC apt-get update
${CI_RETRY_EXE} DOCKER_EXEC apt-get install --no-install-recommends --no-upgrade -y $PACKAGES $DOCKER_PACKAGES

if [ "$USE_BUSY_BOX" = "true" ]; then
  echo "Setup to use BusyBox utils"
  DOCKER_EXEC mkdir -p $BASE_SCRATCH_DIR/bins/
  # tar excluded for now because it requires passing in the exact archive type in ./depends (fixed in later BusyBox version)
  # find excluded for now because it does not recognize the -delete option in ./depends (fixed in later BusyBox version)
  # ar excluded for now because it does not recognize the -q option in ./depends (unknown if fixed)
  # shellcheck disable=SC1010
  DOCKER_EXEC for util in \$\(busybox --list \| grep -v "^ar$" \| grep -v "^tar$" \| grep -v "^find$"\)\; do ln -s \$\(command -v busybox\) $BASE_SCRATCH_DIR/bins/\$util\; done
  # Print BusyBox version
  DOCKER_EXEC patch --help
fi
