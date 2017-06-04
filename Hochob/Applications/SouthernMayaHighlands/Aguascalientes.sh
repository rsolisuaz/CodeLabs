#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export AGUASCALIENTES_PID=$$
export AGUASCALIENTES_NAME="Aguascalientes Application"
export AGUASCALIENTES_PATH=$(readlink -f "$0")
export AGUASCALIENTES_DIRECTORY=$(dirname "$AGUASCALIENTES_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

Fswebcam.sh 5 &
Eog.sh "$CORPORATE_IMAGE/*" &
sleep 1
Mpg123.sh "$AREA_SOUTERN_MAYA_HIGHLANDS/Aguascalientes.mp3"

Institution=`Name.sh`
Memories.sh "camera" "${Institution}" "${AGUASCALIENTES_NAME}"

kill -- -$(ps -o pgid=$AGUASCALIENTES_PID | grep -o '[0-9]*')

# End of File
