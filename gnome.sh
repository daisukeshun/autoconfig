sudo apt remove gnome-shell-extension-ubuntu-dock -y
sudo apt autoremove -y
gsettings set org.gnome.shell.keybindings switch-to-application-1 ['']
gsettings set org.gnome.shell.keybindings switch-to-application-2 ['']
gsettings set org.gnome.shell.keybindings switch-to-application-3 ['']
gsettings set org.gnome.shell.keybindings switch-to-application-4 ['']
gsettings set org.gnome.shell.keybindings switch-to-application-5 ['']
gsettings set org.gnome.shell.keybindings switch-to-application-6 ['']
gsettings set org.gnome.shell.keybindings switch-to-application-7 ['']
gsettings set org.gnome.shell.keybindings switch-to-application-8 ['']
gsettings set org.gnome.shell.keybindings switch-to-application-9 ['']
gsettings set org.gnome.desktop.wm.preferences button-layout 'close:'
gsettings set org.gnome.shell.extensions.dash-to-dock hot-keys false
gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.desktop.wm.preferences num-workspaces 4

sudo snap install telegram-desktop -y
