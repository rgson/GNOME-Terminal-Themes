# GNOME Terminal themes

A collection of themes for GNOME Terminal (v3.18).

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
