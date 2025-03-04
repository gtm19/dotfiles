# Setup fzf
# ---------
if [[ ! "$PATH" == */home/gmaddock/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/gmaddock/.fzf/bin"
fi

source <(fzf --zsh)
