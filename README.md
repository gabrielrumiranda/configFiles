# My Configs
Install Rofi
Install Urxvt
Install Zsh
Create .cache/zsh/zsh-history
sudo update-alternatives --set x-terminal-emulator /usr/bin/urxvt
Install https://github.com/adi1090x/rofi
Install https://github.com/zsh-users/zsh-syntax-highlighting

keybind:
  name: menu_apps
  command: ./config/rofi/bin/menu_apps
  Super B

  name: drun
  command: rofi -show drun
  Super BackSlash

