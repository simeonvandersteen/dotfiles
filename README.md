# dotfiles
Files in used in home directory.

- Install [iTerm2](https://www.iterm2.com/downloads.html)
- Install [Powerline](https://github.com/powerline/fonts) fonts
- Point iTerm2 config to the one in dotfiles

### zsh
```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp custom.zsh ~/.oh-my-zsh/custom/
mkdir ~/.oh-my-zsh/custom/themes
curl -fsSL -o ~/.oh-my-zsh/custom/themes/bullet-train.zsh-theme https://raw.github.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme
```
### vim
```
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~/
vim +PluginInstall +qall
```

TODO: check if "git curl zsh (>=4.3.9) vim" are installed
