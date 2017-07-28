#!/bin/sh

# kill old instance of watcher silently
killall -q mimechange-watcher || true

# Restore the mime for current DE
/usr/local/bin/mime-restore
