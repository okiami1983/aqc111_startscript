#!/bin/sh
#
#
# Description:
# This script is a workaround for the issue that the aqc111 driver does not work after a Synology NAS reboots.
#
# Usage: 
# 1. Install the aqc111 driver.
# 2. Configure network settings by using GUI (Controlpanel > Networks > Network Interfaces).
# 3. Put this script into the /usr/local/etc/rc.d/ directory.
#    (Please confirm that the permission is configured as 755.)
# 4. This script will start the aqc111 driver when a Synology NAS reboots. 
#
# Comments:
# You can find all of packages installed by using the "/usr/syno/bin/synopkg list" command.
#

case "$1" in
"start")
	/usr/syno/bin/synopkg start aqc111-1.3.3.0-2 
	;;
"stop")
	/usr/syno/bin/synopkg stop aqc111-1.3.3.0-2
	;;
esac
exit 0

