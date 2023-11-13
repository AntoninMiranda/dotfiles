cp -r ~/.config/i3 ~/Dotfiles/.config/
cp -r ~/.config/polybar ~/Dotfiles/.config/
cp -r ~/.config/kitty ~/Dotfiles/.config/
cp -r ~/.config/rofi ~/Dotfiles/.config/
cp -r ~/.config/nvim ~/Dotfiles/.config/
cp -r ~/.config/picom ~/Dotfiles/.config/
cp -r ~/.config/ranger ~/Dotfiles/.config/
rm -rf ~/Dotfiles/.config/nvim/lua/nemo/undodir/*
echo "\n" > ~/Dotfiles/.config/nvim/lua/nemo/undodir/.exist
