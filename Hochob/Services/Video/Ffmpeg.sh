#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export FFMPEG_PID=$$
export FFMPEG_BINARY=ffmpeg
export FFMPEG_INPUT=/dev/video0
export FFMPEG_ARGUMENTS="-codec:v libx264 -qp 0"

LOCAL_DIRECTORY="$1"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 1 ]
then
    ffmpeg -i $FFMPEG_INPUT $FFMPEG_CAMERA
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
