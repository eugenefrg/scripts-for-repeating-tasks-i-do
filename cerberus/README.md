# Cerberus Multi-Terminal Manager

This tool uses tmux to manage multiple synchronized terminal sessions, allowing you to run commands across multiple systems simultaneously while maintaining the ability to handle individual cases when needed.

## Installation

### Prerequisites
- A Unix-like operating system (Linux, macOS, etc.)
- Basic terminal knowledge

### Installing tmux
#### On macOS:
`brew install tmux`


## Usage

Run the main script to start the tmux session:
```bash
./run.sh
```

### Mouse Support
- Mouse wheel - Scroll through terminal output
- Click and drag - Select text
- Click on pane - Switch to that pane
- Click and drag pane edges - Resize panes

### Synchronization Control
- `Ctrl-b :` then type `set-window-option synchronize-panes off` - Temporarily disable synchronized input
- `Ctrl-b :` then type `set-window-option synchronize-panes on` - Re-enable synchronized input

### Common Workflows

1. **Running commands across all systems:**
   - Just type normally - input is synchronized by default

2. **Handling a specific system:**
   - Option 1: Temporarily disable synchronized input
   - Option 2: Use `Ctrl-b z` to zoom into the specific pane, handle the issue, then zoom back out
   - Option 3: Simply click on the pane you want to work with

3. **Scrolling through output:**
   - Use the mouse wheel to scroll
   - Or enter scroll mode with `Ctrl-b [`
   - Use arrow keys to scroll
   - Press `q` to exit scroll mode

## Tips

- When you need to handle a different output in one pane, zooming (`Ctrl-b z`) is often the quickest solution
- Use the mouse to quickly switch between panes and scroll through output 