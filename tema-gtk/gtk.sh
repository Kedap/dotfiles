git clone https://github.com/addy-dclxvi/gtk-theme-collections
cp -r gtk-theme-collections/Fantome ~/.themes
rm -rf gtk-theme-collections
git clone https://github.com/vinceliuice/vimix-icon-theme.git
./vimix-icon-theme/install.sh -a
rm -rf vimi-icon-theme
echo "Installing lxappereance"
sudo pacman -S lxappearance --noconfirm
lxappearance
