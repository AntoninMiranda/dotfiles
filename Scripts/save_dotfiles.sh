cp -r ~/.config/i3 ~/dotfiles/.config/
cp -r ~/.config/polybar ~/dotfiles/.config/
cp -r ~/.config/kitty ~/dotfiles/.config/
cp -r ~/.config/rofi ~/dotfiles/.config/
cp -r ~/.config/nvim ~/dotfiles/.config/
cp -r ~/.config/picom ~/dotfiles/.config/
cp -r ~/.config/ranger ~/dotfiles/.config/
cp ~/.zshrc ~/dotfiles
rm -rf ~/dotfiles/.config/nvim/lua/nemo/undodir/*
echo "\n" > ~/dotfiles/.config/nvim/lua/nemo/undodir/.exist
