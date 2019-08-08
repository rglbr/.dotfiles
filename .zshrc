# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _correct _approximate
zstyle :compinstall filename '/home/ragul/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install

# Check if zplug is installed
if [[ ! -d "$HOME/.zplug" ]]; then
  git clone https://github.com/zplug/zplug "$HOME/.zplug/repos/zplug/zplug"
  ln -s "$HOME/.zplug/repos/zplug/zplug/init.zsh" "$HOME/.zplug/init.zsh"
fi

source ~/.zplug/init.zsh

zplug themes/robbyrussell, from:oh-my-zsh, as:theme
zplug "robbyrussell/oh-my-zsh", use:"lib/*.zsh"
zplug plugins/git, from:oh-my-zsh
zplug plugins/fzf, from:oh-my-zsh
zplug gradle/gradle-completion
zplug load --verbose

source ~/.zsh-aliases
source ~/.zsh-aliases-private
