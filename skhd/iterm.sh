#!/usr/bin/env sh

number=$(pgrep -c iTerm2)

if [ "$number" -gt 1 ]
then
        set -e
        osascript - <<EOF
        tell application "iTerm2"
                create window with default profile
        end tell
EOF
else
        open -na /Applications/iTerm.app
fi
