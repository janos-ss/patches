#!/bin/bash
###############################
# copies the sonar-governance plugin jar to the extension directory
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

GOVERNANCE_FILE=~/DEV/governance/sonar-governance-plugin/target/sonar-governance-plugin-2.0-SNAPSHOT.jar
EXT_DIR=$SQ_HOME/extensions/plugins/
echo "copy $GOVERNANCE_FILE to $EXT_DIR"
cp  $GOVERNANCE_FILE $EXT_DIR

