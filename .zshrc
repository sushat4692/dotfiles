source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

zplugin light zsh-users/zsh-autosuggestions
zplugin light zdharma/fast-syntax-highlighting
# zplugin ice pick"async.zsh" src"pure.zsh"; zplugin light sindresorhus/pure

autoload -U compinit
compinit
export NVS_HOME="$HOME/.nvs"
[ -s "$NVS_HOME/nvs.sh" ] && . "$NVS_HOME/nvs.sh"
export PATH="/usr/local/sbin:$PATH"

eval "$(starship init zsh)"