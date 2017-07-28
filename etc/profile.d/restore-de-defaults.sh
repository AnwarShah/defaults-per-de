#!/bin/sh

# kill old instance of watcher silently
killall -q mimechange-watcher || true

# Restore the mime for current DE
mime-restore.sh
