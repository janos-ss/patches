#!/bin/bash
###############################
# configure SQ to use Postgres
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1
PROPERTY_FILE=$SQ_HOME/conf/sonar.properties

echo "using MySql"
set_property sonar.jdbc.username sonarqube $PROPERTY_FILE
set_property sonar.jdbc.password sonarqube $PROPERTY_FILE
set_property sonar.jdbc.url "jdbc:mysql://localhost:3306/sonarqube?useUnicode=true&characterEncoding=utf8&rewriteBatchedStatements=true" $PROPERTY_FILE

