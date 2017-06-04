#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export HUATULCO_PID=$$
export HUATULCO_PATH=$(readlink -f "$0")
export HUATULCO_DIRECTORY=$(dirname "$HUATULCO_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

Stream2Chromecast.sh "Triki" "1.0" "$AREA_CENTRAL_MAYA_LOWLANDS/Huatulco.mp3"

kill -- -$(ps -o pgid=$HUATULCO_PID | grep -o '[0-9]*')

# End of File