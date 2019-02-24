#!/bin/sh

set -eu

export GITHUB="true"

[ -n "$*" ] && export DISCORD_MESSAGE="$*"

/bin/drone-discord
