if [ -e /etc/apt/preferences.d/nosnap.pref ]
then
    sudo rm /etc/apt/preferences.d/nosnap.pref
else
    echo "nosnap file already removed"
fi
sudo xargs -a completePackage.txt apt install

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh ./install.sh
rm install.sh

# Clone and install Powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# Install Zsh autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions.git $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions

echo "Script executed successfully"