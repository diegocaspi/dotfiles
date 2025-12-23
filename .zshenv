export ZELLIJ_AUTO_EXIT=false
export ZELLIJ_AUTO_ATTACH=true

# Only source this once
if [[ -z "$__HM_ZSH_SESS_VARS_SOURCED" ]]; then
  export __HM_ZSH_SESS_VARS_SOURCED=1

fi

export XDG_CONFIG_HOME="$HOME/.config"
export PATH=$HOME/development/flutter/bin:$PATH
export PATH=$HOME/.bun/bin:$PATH%
