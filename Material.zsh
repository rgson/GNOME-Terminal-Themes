#!/bin/zsh

################################################################################
# Material
#
# Based on "Material Theme" for Sublime Text by Mattia Astorino.
# http://equinsuocha.io/material-theme/
################################################################################

_setup_theme() {
	local dconfp='/org/gnome/terminal/legacy/profiles:'
	local profile=$(dconf list "$dconfp/" | grep ^: | sed 's/\///g')

	if [[ -z $profile ]]; then
		echo 'No active profile.' \
		     'Change something in Profile Preferences to generate one.' >&2
		exit 1
	fi

	dset () { dconf write "$dconfp/$profile/$1" "$2" ;}
	dsets() { dset $1 "'$2'"                         ;}
	dsetl() { dset $1 "[${(j., .)${:-'$^@[2,-1]'}}]" ;}


	dsets visible-name 'Material'

	dsets background-color '#263238'
	dsets foreground-color '#eeffff'
	dsetl palette '#546e7a' '#f07178' '#c3e88d' '#f78c6c' \
	              '#82aaff' '#c792ea' '#89ddff' '#eeffff' \
	              '#000000' '#f07178' '#c3e88d' '#f78c6c' \
	              '#82aaff' '#c792ea' '#89ddff' '#ffffff'

	dset  bold-color-same-as-fg 'true'
	dset  use-transparent-background 'true'
	dset  background-transparency-percent '10'
	dsets cursor-shape 'ibeam'
	dsets font 'DejaVu Sans Mono 10'

	dset  use-system-font        'false'
	dset  use-theme-background   'false'
	dset  use-theme-colors       'false'
	dset  use-theme-transparency 'false'
}
_setup_theme
