#!/bin/sh

# kill old instance of watcher
killall -q mimechange-watcher || echo "mimechange-watcher was not running"


# Restore the mime for current DE
mime-restore.sh
