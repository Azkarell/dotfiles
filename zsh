# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/azkarell/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#


eval "$(starship init zsh)"
source /usr/share/nvm/init-nvm.sh
source /home/azkarell/spotify_player.zsh
alias clip="kitten clipboard --get-clipboard"
alias spoty="spotify_player"
alias gcclip="git clone $(kitten clipboard --get-clipboard)"
alias icat="kitten icat"
fastfetch

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/azkarell/.lmstudio/bin"
# End of LM Studio CLI section
export PATH="$PATH:/home/azkarell/.cargo/bin"

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}


(cat ~/.cache/wal/sequences &)
