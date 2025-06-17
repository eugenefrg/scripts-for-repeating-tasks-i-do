#!/bin/bash
SCRIPT_DIR=$(dirname "$0")

# Load environment variables from .env file in the script's directory
if [ -f "$SCRIPT_DIR/.env" ]; then
  source "$SCRIPT_DIR/.env"
fi

# Create a new tmux session if it doesn't exist
if ! tmux has-session -t cerberus 2>/dev/null; then
    # Create new session named cerberus
    tmux new-session -d -s cerberus

    # Enable mouse mode for scrolling and pane selection
    tmux set-option -t cerberus mouse on

    # Create the first pane and run the first script
    tmux send-keys -t cerberus "cd $SCRIPT_DIR && ./run_1.sh" C-m

    # Split window into panes
    tmux split-window -h -t cerberus
    tmux send-keys -t cerberus "cd $SCRIPT_DIR && ./run_2.sh" C-m

    tmux split-window -v -t cerberus
    tmux send-keys -t cerberus "cd $SCRIPT_DIR && ./run_3.sh" C-m

    # Select the first pane
    tmux select-pane -t 0

    # Enable synchronized input
    tmux set-window-option -t cerberus synchronize-panes on
fi

# Attach to the session
tmux attach-session -t cerberus