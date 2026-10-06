#!/bin/sh

set -eu

export GITHUB="true"

# An omitted action input arrives as an empty environment variable.
# Leave it unset so the CLI sends its default notification template.
if [ -z "${INPUT_MESSAGE:-}" ]; then
  unset INPUT_MESSAGE
fi

[ -n "$*" ] && export DISCORD_MESSAGE="$*"

/bin/drone-discord
