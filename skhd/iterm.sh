#!/usr/bin/env sh

number=$(ps aux | grep iTerm2 |wc -l)

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
