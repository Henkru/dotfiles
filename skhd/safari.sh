#!/usr/bin/env sh

number=$(pgrep -c "/Applications/Safari.app/Contents/MacOS/Safari")
if [ "$number" -gt 1 ]
then
    set -e
    osascript - <<EOF
    tell application "Safari"
        make new document
        activate
    end tell
EOF
else
    open -na safari
fi
