# ~/.zprofile - Basic Zsh profile configuration

# Set the PATH variable to include user's local bin directory
export PATH="$HOME/bin:$PATH"
export PATH=$HOME/.local/bin:$PATH

# Set up environment variables
export EDITOR="nvim"
export LANG="en_US.UTF-8"

# Automatically start tmux if not already in a session
#[ -z "$TMUX" ] && exec tmux

# Source .zshrc for additional configurations
if [ -f "$HOME/.zshrc" ]; then
    source "$HOME/.zshrc"
fi

# Startx
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec startx
fi
