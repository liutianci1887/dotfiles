# dotfiles

### Main

```
echo ".dotfiles" >> .gitignore
git clone --bare https://github.com/liutianci1887/dotfiles $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
omf install bobthefish
omf install nvm
```

### Vim

```
:PlugInstall
```
