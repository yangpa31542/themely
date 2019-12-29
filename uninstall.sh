#!/bin/sh
# SCRIPT: uninstall.sh
# PURPOSE: Remove the Themely plugin from cPanel
# AUTHOR: Ishmael 'Hans' Desjarlais <ismaelyws@gmail.com>
clear
echo "-------------------------------------------------"
echo "Removing the Themely cPanel/WHM Plugin"
echo "-------------------------------------------------"
# Unregister the plugin
/usr/local/cpanel/scripts/uninstall_plugin /usr/local/cpanel/base/frontend/paper_lantern/themely/themely.tar.gz --theme=paper_lantern
/usr/local/cpanel/bin/unregister_appconfig /var/cpanel/apps/themely.conf
# Remove the plugin folder & files
rm -rf /usr/local/cpanel/base/frontend/paper_lantern/themely
rm -rf /usr/local/cpanel/whostmgr/docroot/templates/themely
# Remove the cronjob file
rm /etc/cron.daily/themelycron
# Remove the uninstall.sh file from root directory
rm uninstall.sh
echo "----------------------------"
echo "Themely successfully removed!"
echo "----------------------------"