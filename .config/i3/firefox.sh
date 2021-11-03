#!/bin/sh

# unfortunaltely we cannot set WM_CLASS per window, what you will set using --class will be used for all windows of firefix of this instance
# so - old hacks with sleep goes into this...
# first, move to workspace 2 & launch firefox
i3-msg "workspace 2"
firefox --url "ext+container:name=Personal&url=https://open.spotify.com" --url "ext+container:name=Personal&url=https://www.notion.so" --url "ext+container:name=Personal&url=https://gmail.com" --url "ext+container:name=Personal&url=https://todoist.com/app/today" &

# then sleep & launch firefox on workplace 1
sleep 3
i3-msg 'workspace 1; exec --no-startup-id firefox --new-window --url "ext+container:name=Work&url=https://tardis.dragonfly.pl/icingaweb2/dashboard" --url "ext+container:name=Work&url=https://zimbra.dragonfly.pl" --url "ext+container:name=Work&url=https://rtng.dragonfly.pl/#ticket/view/my_assigned" --url "ext+container:name=Work&url=https://dragonfly.workplace.com/chat"'
