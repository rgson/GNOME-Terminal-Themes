# GNOME Terminal themes

A collection of themes for GNOME Terminal.

Each theme is stored as a self-contained script which imports the theme.


## Installing a theme

To install a theme, simply execute the desired theme's import script.
For example, to install the **Dracula** theme:

```sh
./Dracula.zsh
```


## Creating a theme

To create a theme, copy one of the pre-existing themes and edit the values
to suit your design.

The existing themes do not utilize the full range of available customization
options. A list of all available configuration keys can be found using the
following command:

```sh
gsettings list-keys org.gnome.Terminal.Legacy.Profile
```

More information about the fields can be found in the
[GNOME Terminal repository](https://github.com/GNOME/gnome-terminal/blob/gnome-3-18/src/org.gnome.Terminal.gschema.xml#L105).


## Dependencies

The software listed below is needed for the installer scripts to work.
They have been tested using the versions listed alongside each program.
However, they will likely work for a much wider range of versions.

- dconf-cli (0.24.0-2)
- gnome-terminal (3.18.3)
- zsh (5.1.1)
