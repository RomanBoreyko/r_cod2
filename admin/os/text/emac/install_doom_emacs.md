(add-to-list 'custom-theme-load-path "~/.emacs.d/theme")
(load-theme 'dracula t)

sudo apt remove --purge emacs-bin-common emacs-el emacs-gtk emacs
sudo apt autoremove
sudo apt remove --autoremove emacs emacs-common
sudo apt-get remove emacs emacs23 emacs24 emacs25 emacs26 emacs-bin-common emacs-common emacs-el emacs-gtk
sudo apt update
remove //rename\\ .emacs.d

sudo apt install emacs28
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
~/.emacs.d/bin/doom install

vim .bashrc
	export PATH="$HOME/.emacs.d/bin:$PATH"

source .bashrc
doom sync

vim .bashrc
	alias emacs="emacsclient -c -a 'emacs'"


~/.doom.d/init.el

//правильный запуск doom emacs терминал » 
/usr/bin/emacs --daemon &
emacsclient -c -a 'emacs'

//emmet
M-x package-list-packages C-s emmet
установленно

// to key in other lang
M-x package install   reverse-im
установленно

delall

71122 emacs
sudo apt-get install emacs

Errors were encountered while processing:
 /var/cache/apt/archives/emacs-common_1%3a26.3+1-1ubuntu2_all.deb
E: Sub-process /usr/bin/dpkg returned an error code (1)




















sudo apt remove --purge emacs-bin-common emacs-el emacs-gtk emacs
sudo apt autoremove
sudo apt remove --autoremove emacs emacs-common
sudo apt-get remove emacs emacs23 emacs24 emacs25 emacs26 emacs-bin-common emacs-common emacs-el emacs-gtk
sudo apt update
remove .emacs.d
.bashrc //cкрыл

sudo apt-get update
sudo apt-get install emacs