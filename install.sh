#!/bin/bash

echo "Installing the application..."
INSTALL=$(dirname $(realpath $0) )
APPPATH="$HOME/.local/share/applications"
BINPATH="$HOME/.local/bin/change-panel-icon"

if [ -d "$BINPATH" ];
then
	echo "Application already installed."
else
	mkdir "$BINPATH"
	cp "$INSTALL/change-panel-icon.sh" "$BINPATH"
	cp "$INSTALL/change-panel-icon.svg" "$BINPATH"
	cp -r "$INSTALL/panel-icons" "$BINPATH"
	echo "[Desktop Entry]" >> "$APPPATH/change-panel-icon.desktop"
	echo "Type=Application" >> "$APPPATH/change-panel-icon.desktop"
	echo "Terminal=false" >> "$APPPATH/change-panel-icon.desktop"
	echo "Name=Change Panel Icon" >> "$APPPATH/change-panel-icon.desktop"
	echo "GenericName[fr]=Change Panel Icon" >> "$APPPATH/change-panel-icon.desktop"
	echo "Comment=Change the icon of the GNOME application launcher" >> "$APPPATH/change-panel-icon.desktop"
	echo "Comment[fr]=Change l'icône du lanceur d'application GNOME" >> "$APPPATH/change-panel-icon.desktop"
	echo "Categories=Settings;" >> "$APPPATH/change-panel-icon.desktop"
	echo "Icon=$BINPATH/change-panel-icon.svg" >> "$APPPATH/change-panel-icon.desktop"
	echo "Exec=sh $BINPATH/change-panel-icon.sh" >> "$APPPATH/change-panel-icon.desktop"
	echo "Done."
fi
