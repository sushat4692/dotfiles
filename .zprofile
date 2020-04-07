# export NVS_HOME="$HOME/.nvs"
# git clone https://github.com/jasongin/nvs "$NVS_HOME"
# . "$NVS_HOME/nvs.sh" install

export DOT_REPO="https://github.com/sus-happy/dotfiles.git"
export DOT_DIR="$HOME/.dotfiles"
fpath=($HOME/.dot $fpath)  # <- for completion
source $HOME/.dot/dot.sh
