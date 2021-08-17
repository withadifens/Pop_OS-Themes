# Make prompt start from bottom
printf '\n%.0s' {1..100}
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Export PATH Here
export ZSH=$HOME/.oh-my-zsh
export PATH="$PATH:/opt/android-studio/jre/bin"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"
export PATH="$PATH:$HOME/Development/flutter/bin"
export PATH="$PATH:$HOME/Android/Sdk/emulator"

# Make Alias Here
alias bton="sudo systemctl restart bluetooth"
alias webstat="sudo systemctl status nginx"
alias webon="sudo systemctl start nginx"
alias weboff="sudo systemctl stop nginx"
alias vpnon="protonvpn-cli c"
alias vpnoff="protonvpn-cli d"
alias update="sudo apt update && sudo apt upgrade"
alias del="history -c && flatpak uninstall --unused"
alias servon="php artisan serve --host 0.0.0.0 --port 8000"
alias clean="sudo apt autoremove && sudo apt clean"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
)

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
