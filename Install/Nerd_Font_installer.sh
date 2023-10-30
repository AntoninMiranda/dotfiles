#/bin/bash
# install DroidSansMono Nerd Font --> u can choose another at: https://www.nerdfonts.com/font-downloads
echo "[-] Download fonts [-]"
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh
cd ..
rm nerd-fonts
echo "done!"
