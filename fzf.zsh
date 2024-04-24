# Setup fzf
# ---------
FZF_DIR=/home/gmaddock/.fzf

if [[ ! "$PATH" == *$FZF_DIR/bin* ]]; then
  PATH="${PATH:+${PATH}:}${FZF_DIR}/bin"
fi

source $FZF_DIR/shell/completion.zsh
source $FZF_DIR/shell/key-bindings.zsh
