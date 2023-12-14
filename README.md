# This is my I3 cyberpunk config 

## Install
Install Arch
clone repository and install all app write in Install/requirement_*.txt

copy .config to your .config.
install zsh

### if you want run i3 after login in lauch of laptop
exec this
```
sudo echo "if [[ "$(tty)" == '/dev/tty1' ]]; then
   exec startx
fi" >> /etc/profile
```

### if you want quto start on your arch make this
[Auto run os and skip grub menu]:https://wiki.archlinux.org/title/GRUB/Tips_and_tricks#Hide_GRUB_unless_the_Shift_key_is_held_down

![ArchLabs-59-2160x1440](https://github.com/AntoninMiranda/dotfiles/assets/114911103/d15025ae-ea6f-476f-a317-9d63d4b8d5b2)
