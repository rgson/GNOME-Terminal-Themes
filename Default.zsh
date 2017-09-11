#!/bin/zsh

################################################################################
# Default
#
# Restores the GNOME Terminal theme to the system's default.
################################################################################

() {
	local dconfp='/org/gnome/terminal/legacy/profiles:'
	local profile=$(gsettings get org.gnome.Terminal.ProfilesList default)

	dconf reset -f "$dconfp/:${profile[2,-2]}/"
}
