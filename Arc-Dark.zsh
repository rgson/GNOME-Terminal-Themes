#!/bin/zsh

################################################################################
# Arc-Dark
#
# Based on "Arc-Dark" for Cinnamon by horst3180.
# https://github.com/horst3180/arc-theme
################################################################################

() {
	local dconfp='/org/gnome/terminal/legacy/profiles:'
	local profile=$(gsettings get org.gnome.Terminal.ProfilesList default)
	dset () { dconf write "$dconfp/:${profile[2,-2]}/$1" "$2" ;}
	dsets() { dset $1 "'$2'"                                  ;}
	dsetl() { dset $1 "[${(j., .)${:-'$^@[2,-1]'}}]"          ;}


	dsets visible-name 'Arc-Dark'

	dsets background-color '#383c4a'
	dsets foreground-color '#d3dae3'
	dsetl palette '#4b5162' '#e15158' '#a7e151' '#e1af51' \
	              '#5294e2' '#ba75e8' '#51b8e1' '#d3dae3' \
	              '#000000' '#e15158' '#a7e151' '#e1af51' \
	              '#5294e2' '#ba75e8' '#51b8e1' '#ffffff'

	dset  bold-color-same-as-fg 'true'
	dset  use-transparent-background 'false'
	dsets cursor-shape 'ibeam'

	dset  use-system-font        'true'
	dset  use-theme-background   'false'
	dset  use-theme-colors       'false'
	dset  use-theme-transparency 'false'


	unfunction dset dsets dsetl
}
