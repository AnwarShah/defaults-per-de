#!/bin/bash

DE_SPECIFIC_FILE="$HOME/.config/mimeapps-$XDG_SESSION_DESKTOP.list"

if [ -f $DE_SPECIFIC_FILE ]; then
	cp $DE_SPECIFIC_FILE ~/.config/mimeapps.list
else
	cp ~/.config/mimeapps.list $DE_SPECIFIC_FILE
fi


