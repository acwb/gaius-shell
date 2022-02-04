# enter a few characters and press UpArrow/DownArrow
# to search backwards/forwards through the history
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
bind '"\e[5~": beginning-of-history'
bind '"\e[6~": end-of-history'
bind '"\e[1;5C": forward-word'
bind '"\e[1;5D": backward-word'
bind '"\e[5C": forward-word'
bind '"\e[5D": backward-word'
bind '"\e\e[C": forward-word'
bind '"\e\e[D": backward-word'