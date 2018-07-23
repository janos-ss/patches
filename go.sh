#!/usr/bin/env bash

set -euo pipefail

. scripts/property_utils.sh
. "$(dirname "${BASH_SOURCE[0]}")/functions.sh"

set_dev
replace_plugin "$1" "$DEV/sonar-go/sonar-go-plugin/build/libs" sonar-go-plugin