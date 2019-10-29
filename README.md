# .dotfiles

## set up on a new machine

`git clone --bare  https://github.com/rglbr/.dotfiles.git ~/.dotfiles`

`alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'`

`config checkout`

`config pull --recurse-submodules`

`zplug install`
