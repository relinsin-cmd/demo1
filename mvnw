#!/usr/bin/env sh
# ----------------------------------------------------------------------------
# Maven startup script for UN*X
# ----------------------------------------------------------------------------

# Set the MAVEN_HOME environment variable if not already set
if [ -z "$MAVEN_HOME" ]; then
  M2_HOME="$(cd "$(dirname "$0")/.."; pwd)"
else
  M2_HOME="$MAVEN_HOME"
fi

# Set the MAVEN_OPTS environment variable if set
if [ -n "$MAVEN_OPTS" ]; then
  MAVEN_OPTS="$MAVEN_OPTS"
fi

# Execute Maven with the specified options
exec "$M2_HOME/bin/mvn" "$@"