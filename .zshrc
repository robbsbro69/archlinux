# Enable completion
autoload -Uz compinit
compinit

# Enable syntax highlighting and autosuggestions
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


# Set a useful prompt: username@hostname current_directory ➜
PROMPT='%F{green}%n%f %F{blue}%~%f ➜ '

# History settings
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

alias laptopoff="~/.config/hypr/scripts/autodisplay.sh"
alias wifi-device='sudo arp-scan --interface=wlan0 --localnet | grep -vE "Interface:|packets|Starting|Ending" | wc -l'
alias tor="transmission-cli"
