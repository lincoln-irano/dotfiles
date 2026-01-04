# Homebrew 'compinit' (para autocompletar)
if type brew &>/dev/null; then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
  autoload -Uz compinit
  compinit
fi
# Exports (Var environment and PATHs)
# Path do homebrew
export PATH="/opt/homebrew/bin:$PATH"

# Path dos binários do sistema
export PATH="$HOME/.local/bin:$PATH"

# Path fn/n -> Node package manager
export N_PREFIX="$HOME/.n"
export PATH="$N_PREFIX/bin:$HOME/.local/bin:$PATH"

# Path Java
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Inicializations tools
# Starship Prompt
eval "$(starship init zsh)"

# ZSH-AUTOSGGESTIONS
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# ZOXID
eval "$(zoxide init zsh)"

# Aliases
alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-permissions --all"
alias bat="bat --style=auto"
alias config="z ~/.config/"

# pnpm
export PNPM_HOME="/Users/lincolnirano/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


# Load Angular CLI autocompletion.
source <(ng completion script)

# ZSH-AUTOSUGGESTIONS
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# FZF (Fuzzy Finder)
source <(fzf --zsh)
export FZF_CTRL_T_OPTS="
  --style full
  --walker-skip .git,node_modules,target
  --preview 'bat -n --color=always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'
"
