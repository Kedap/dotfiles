git clone https://github.com/addy-dclxvi/gtk-theme-collections
cp -r gtk-theme-collections/Fantome ~/.themes
rm -rf gtk-theme-collections
git clone https://github.com/vinceliuice/vimix-icon-theme.git
./vimix-icon-theme/install.sh -a
rm -rf vimi-icon-theme
echo "Installing lxappereance for gtk+ and gtk+ 3"
sudo pacman -S lxappearance lxappearance-gtk3 --noconfirm
lxappearance
