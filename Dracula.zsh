#!/bin/zsh

################################################################################
# Dracula
#
# A stand-alone version of the "Dracula" theme bundled with Gogh.
# https://github.com/Mayccoll/Gogh/blob/master/content/themes.md#dracula
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


	dsets visible-name 'Dracula'

	dsets background-color '#282a36'
	dsets foreground-color '#94A3A5'
	dsetl palette '#44475a' '#ff5555' '#50fa7b' '#ffb86c' \
	              '#8be9fd' '#bd93f9' '#ff79c6' '#94A3A5' \
	              '#000000' '#ff5555' '#50fa7b' '#ffb86c' \
	              '#8be9fd' '#bd93f9' '#ff79c6' '#ffffff'

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
