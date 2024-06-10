if [ -e /etc/apt/preferences.d/nosnap.pref]
then
    sudo rm /etc/apt/preferences.d/nosnap.pref
else
    echo "nosnap file already removed"
fi
sudo xargs -a completePackage.txt apt install

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo y | sh ./install.sh
rm install.sh

# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

git clone https://github.com/zsh-users/zsh-autosuggestions.git $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
