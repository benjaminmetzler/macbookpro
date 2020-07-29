
# capture all commands to a log file
# 
export ZSH_LOGS=~/.zsh_logs
[[ -d ${ZSH_LOGS} ]] || mkdir ${ZSH_LOGS}
export LOG_ZSH_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ${ZSH_LOGS}/zsh-history-$(date "+%Y-%m-%d").log; fi'
precmd() { eval "$LOG_ZSH_COMMAND" }

# Grep though command logs
function hgrep { grep "$1" ~/.zsh_logs/*.log }


# mark and jump directories
# https://www.datascienceworkshops.com/blog/quickly-navigate-your-filesystem-from-the-command-line/
export MARKPATH=$HOME/.marks
function jump { 
	cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
}
function mark { 
	mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}
function unmark { 
	rm -if "$MARKPATH/$1"
}
function marks {
	ls -l "$MARKPATH" | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/	-/g' && echo
}

# Aliases
alias ls='ls -G'
alias ll='ls -lGa'

# Copy current directory and then switch to home
# terminal.app/catalina opens the new terminal windows
# in the current terminal CWD.  This is useful
# sometimes, but I'd rather open into ~ with the option
# of jumping to the working directory.
unmark ld; mark ld 
cd ~

# Starship prompt
https://starship.rs/
eval "$(starship init zsh)"
