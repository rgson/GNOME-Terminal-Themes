#!/bin/zsh

################################################################################
# Default
#
# Restores the GNOME Terminal theme to the system's default.
################################################################################

_setup_theme() {
	local dconfp='/org/gnome/terminal/legacy/profiles:'
	local profile=$(dconf list "$dconfp/" | grep ^: | sed 's/\///g')

	[[ -n $profile ]] && dconf reset -f "$dconfp/$profile/"
}
_setup_theme
