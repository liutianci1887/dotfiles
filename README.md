# dotfiles

### Main

```
echo ".dotfiles" >> .gitignore
git clone --bare https://github.com/liutianci1887/dotfiles $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
curl -L https://get.oh-my.fish | fish
omf install bobthefish
```

### Vim

```
:PlugInstall
```
