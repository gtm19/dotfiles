# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/garethmaddock/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/Users/garethmaddock/.fzf/bin"
fi

eval "$(fzf --zsh)"
