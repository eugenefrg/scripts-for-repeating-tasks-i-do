#!/bin/bash
SCRIPT_DIR=$(dirname "$0")

open_terminal_and_run() {
    local session_id="$1"
    open -a Terminal "./$SCRIPT_DIR/run_$session_id.sh" & # this is mac only I think
}

--- Run for sessions 1 to 3 ---
for i in {1..3}; do
  open_terminal_and_run "$i"
done

# test one ?
# open_terminal_and_run 1

echo "Opened terminal sessions 1 to 3."

exit 0