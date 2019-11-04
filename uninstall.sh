#!/bin/sh
# SCRIPT: uninstall.sh
# PURPOSE: Remove the One-Click WP Installer plugin from cPanel
# AUTHOR: Ishmael 'Hans' Desjarlais <ismaelyws@gmail.com>
# REMOVAL INSTRUCTIONS:
# wget -N https://bitbucket.org/ismaelyws/themely/raw/6d0f897d43b3ad198ab7c8803d4a7c2eb9effa64/uninstall.sh
# chmod 755 uninstall.sh
# ./uninstall.sh
clear
echo "-------------------------------------------------"
echo "Removing the One-Click WP Installer cPanel Plugin"
echo "-------------------------------------------------"
# Unregister the plugin
/usr/local/cpanel/scripts/uninstall_plugin /usr/local/cpanel/base/frontend/paper_lantern/oneclick-wp-installer/oneclick-wp-installer.tar.gz --theme=paper_lantern
# Remove the uninstall.sh file from root directory
rm uninstall.sh
echo "----------------------------"
echo "Plugin successfully removed!"
echo "----------------------------"