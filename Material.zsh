#!/bin/zsh

################################################################################
# Material
#
# Based on "Material Theme" for Sublime Text by Mattia Astorino.
# http://equinsuocha.io/material-theme/
################################################################################

() {
	local dconfp='/org/gnome/terminal/legacy/profiles:'
	local profile=$(gsettings get org.gnome.Terminal.ProfilesList default)
	dset () { dconf write "$dconfp/:${profile[2,-2]}/$1" "$2" ;}
	dsets() { dset $1 "'$2'"                                  ;}
	dsetl() { dset $1 "[${(j., .)${:-'$^@[2,-1]'}}]"          ;}


	dsets visible-name 'Material'

	dsets background-color '#263238'
	dsets foreground-color '#eeffff'
	dsetl palette '#546e7a' '#f07178' '#c3e88d' '#ffcb6b' \
	              '#82aaff' '#c792ea' '#89ddff' '#eeffff' \
	              '#000000' '#f07178' '#c3e88d' '#ffcb6b' \
	              '#82aaff' '#c792ea' '#89ddff' '#ffffff'

	dset  bold-color-same-as-fg 'true'
	dset  use-transparent-background 'false'
	dsets cursor-shape 'ibeam'

	dset  use-system-font        'true'
	dset  use-theme-background   'false'
	dset  use-theme-colors       'false'
	dset  use-theme-transparency 'false'


	unfunction dset dsets dsetl
}
