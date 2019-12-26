sudo apt remove gnome-shell-extension-ubuntu-dock -y
sudo apt autoremove -y
gsettings set org.gnome.desktop.wm.preferences button-layout 'close,maximize:'
gsettings set org.gnome.shell.extensions.dash-to-dock hot-keys false
gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.desktop.wm.preferences num-workspaces 4
