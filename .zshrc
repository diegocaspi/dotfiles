eval "$(zellij setup --generate-auto-start zsh)"

ZSH_AUTOSUGGEST_STRATEGY=(history)

# tools

# atuin - shell history
if command -v atuin > /dev/null 2>&1; then
  eval "$(atuin init zsh)"
fi

# direnv - directory-specific environments
if command -v direnv > /dev/null 2>&1; then
  eval "$(direnv hook zsh)"
fi

# starship - prompt
if command -v starship > /dev/null 2>&1; then
  eval "$(starship init zsh)"
fi

# zoxide - directory jumping
if command -v zoxide > /dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi

function yy() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
  yazi "$@" --cwd-file="$tmp"
  if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
    builtin cd -- "$cwd"
  fi
  rm -f -- "$tmp"
}

# aliases
alias dx=devbox
alias k=kubectl
alias lg=lazygit
alias ll='eza -l'
alias vi=nvim
alias y=yazi
alias cl=clear

# opencode
export PATH=/Users/diegocaspi/.opencode/bin:$PATH
