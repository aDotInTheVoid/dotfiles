# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch
unsetopt beep notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/nixon/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# https://stackoverflow.com/a/13021677/11466826
export NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$PATH:$NPM_PACKAGES/bin"
unset MANPATH
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# export CARGO_TARGET_DIR="$HOME/.target"

alias serve='python3 -m http.server'




# Starship
eval "$(starship init zsh)"

# opam configuration
test -r /home/nixon/.opam/opam-init/init.zsh && . /home/nixon/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# FZF respect .gitignore, etc
export FZF_DEFAULT_COMMAND='fd --type f'


alias idot='dot -Efontsize=18 -Gdpi=500 -Efontname=sans -Nfontname=sans -Tpng -Gbgcolor=black -Gcolor=white -Ecolor=white -Efontcolor=white -Ncolor=white -Nfontcolor=white | convert -trim -bordercolor black -border 20 -transparent black -resize 60% - - | kitty icat --scale-up'

