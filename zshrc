# autoload -Uz compinit
# compinit -i
# [[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)

function hgrep { grep "$1" ~/.zsh_logs/*.log }


# capture all commands to a log file
export ZSH_LOGS=~/.zsh_logs
[[ -d ${ZSH_LOGS} ]] || mkdir ${ZSH_LOGS}
export LOG_ZSH_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ${ZSH_LOGS}/zsh-history-$(date "+%Y-%m-%d").log; fi'
precmd() { eval "$LOG_ZSH_COMMAND" }

# mark and jump directories
# https://www.datascienceworkshops.com/blog/quickly-navigate-your-filesystem-from-the-command-line/
export MARKPATH=$HOME/.marks
function j { 
	cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
}
function m { 
	mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}
function um { 
	rm -i "$MARKPATH/$1"
}
function ms {
	ls -l "$MARKPATH" | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo
}

# Aliases
alias ls='ls -G'
alias ll='ls -lGa'

# Starship prompt
# https://starship.rs/
eval "$(starship init zsh)"
