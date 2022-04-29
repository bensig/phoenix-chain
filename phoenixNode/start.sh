#!/bin/bash
################################################################################
# Phoenix tools 
###############################################################################

NODEOSBINDIR="/opt/eosio/bin"
DATADIR="/opt/PhoenixTestnet/phoenixNode"

$DATADIR/stop.sh
echo -e "Starting Nodeos \n";

ulimit -n 65535
ulimit -s 64000

$NODEOSBINDIR/nodeos --data-dir $DATADIR --config-dir $DATADIR "$@" > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/nodeos.pid

