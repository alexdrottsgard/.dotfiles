source ~/zsh/zsh-aliases.zsh
source ~/zsh-eletive/zsh-eletive.zsh

alias eletive-dev='zsh ~/Code/eletive/dev-environment/tmux-dev-start.sh'

vv() {
  local config=$(find ~/.config -maxdepth 1 -type d \( -name "nvim" -o -name "nvim-*" \) | fzf --prompt="Neovim Configs > " --height=50% --layout=reverse --border --exit-0)
 
  # If I exit fzf without selecting a config, don't open Neovim
  [[ -z $config ]] && echo "No config selected" && return
 
  # Open Neovim with the selected config
  NVIM_APPNAME=$(basename $config) nvim $1
}

alias nvimobsidian='cd ~/Library/Mobile\ Documents/iCloud\~md\~obsidian/Documents/Obsidian\ Vault/ && nvim .'

eval "$(starship init zsh)"

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
