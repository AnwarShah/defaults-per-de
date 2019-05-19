#!/bin/bash

sessiontypefile="$HOME/.config/sessiontype"

# First read previous session type
if [ -f $sessiontypefile ]; then
    read -r oldsessiontype < $sessiontypefile
else
    # if there is no old session file create one
    echo $XDG_SESSION_DESKTOP > $sessiontypefile
fi
    
# if oldsessiontype is set
if [ ! -z $oldsessiontype ]; then
    # and a mimeapps.list file exists
    if [ -f ~/.config/mimeapps.list ]; then 
        # backup its modified file
        cp ~/.config/mimeapps.list ~/.config/mimeapps-$oldsessiontype.list
    else
    	# create an empty mimeapps.list file
        echo '' > ~/.config/mimeapps.list
    fi
fi


# if $XDG_SESSION_DESKTOP is set
if [ ! -z $XDG_SESSION_DESKTOP ]; then
    # restore its modified DE specific mime default file
	cp ~/.config/mimeapps-$XDG_SESSION_DESKTOP.list ~/.config/mimeapps.list
fi

# set this session's name so that next session can use it
echo $XDG_SESSION_DESKTOP > $sessiontypefile


