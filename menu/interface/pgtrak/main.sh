#!/bin/bash
#
# [Ansible Role]
#
# GitHub:   https://github.com/Admin9705/PlexGuide.com-The-Awesome-Plex-Server
# Author:   Admin9705
# URL:      https://plexguide.com
#
# PlexGuide Copyright (C) 2018 PlexGuide.com
# Licensed under GNU General Public License v3.0 GPL-3 (in short)
#
#   You may copy, distribute and modify the software as long as you track
#   changes/dates in source files. Any modifications to our software
#   including (via compiler) GPL-licensed code must also be made available
#   under the GPL along with build & install instructions.
#
#################################################################################
file="/var/plexguide/pgtrak.api"
if [ ! -e "$file" ]; then
echo "NOT-SET" > /var/plexguide/pgtrak.api
fi

file="/var/plexguide/pgtrak.rpath"
if [ ! -e "$file" ]; then
echo "NOT-SET" > /var/plexguide/pgtrak.rpath
fi

file="/var/plexguide/pgtrak.spath"
if [ ! -e "$file" ]; then
echo "NOT-SET" > /var/plexguide/pgtrak.spath
fi

file="/var/plexguide/pgtrak.sprofile"
if [ ! -e "$file" ]; then
echo "NOT-SET" > /var/plexguide/pgtrak.sprofile
fi

file="/var/plexguide/pgtrak.rpath"
if [ ! -e "$file" ]; then
echo "NOT-SET" > /var/plexguide/pgtrak.rprofile
fi

break=no
while [ "$break" == "no" ]; do

tee <<-EOF

---------------------------------------------------------------------------
PGTrak Deployment Interface
---------------------------------------------------------------------------

NOTE: Welcome to PGTrak, a forked version of Trakktar that adapts to PG.

PURPOSE: PGTrak enables a user to STUFF Radarr and Sonarr with tons of tv
shows and/or movies without having to manually search for every single
item on their own.  PGTrak is useful for with the PG Google GCE Feeder
Edition.

WARNING: PGTrak can fill up Sonarr and Radarr extensively! Great for data
horders!
EOF


while [ "$typed" != "1" ]; do
################## Selection ########### START
tee <<-EOF

---------------------------------------------------------------------------
PG Traefik Deployment Interface - Reverse Proxy
---------------------------------------------------------------------------

NOTE: Making Changes? Redeploy PGTrak When Complete!

1.  Exit the PGTrak Interface
2.  Trakt API-Key    : [$api]
3.  Radarr Movie Path: [$rpath]
4.  Radarr Profile   : [$rprofile]
5.  Sonarr Movie Path: [$spath]
6.  Sonarr Profile   : [$sprofile]
7.  Deploy PGTrak

EOF
################## Selection ########### START

if [ "$typed" == "2" ]; then
tee <<-EOF

---------------------------------------------------------------------------
Trakt API-Key
---------------------------------------------------------------------------

NOTE: In order for this to work, you must retrieve your API Key! Prior to
continuing, please follow the current steps.

1. Visit - https://trakt.tv/oauth/applications
2. Click - New Applications
3. Name  - Whatever You Like
4. Redirect UI - https://google.com
5. Permissions - Click /checkin and /scrobble
6. Click - Save App
7. Copy the Client ID & Secret for the Next Step!

EOF
read -n 1 -s -r -p "Press [ANY KEY] to Continue "
echo ""



fi



#### Final Done
done