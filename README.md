# .dotfiles

These are my personal dotfiles for customizing my dev environment.

## Installation

1. Clone this repository
2. *Optional*: Add your own config file (e.g., `.bashrc`, `.vimrc`) to it.
3. Create symlinks for each dotfile: e.g., `ln -s ~/.dotfiles/.bashrc ~/.bashrc`
4. Repeat for all files (e.g., .bashrc, .config/nvim)

To check if a symlink worked:
- Run `ls -l ~/.bashrc` (replace with your file) - it should show `--> /path/to/target` indicating it's a symlink.
- Use `readlink ~/.bashrc` to display the target path.
- Try accessing/editing the file; if it behaves normallyh, the symlink is functional. If not, the target might be missing.

## Usage

- Edit in `~/.dotfiles/` and commit changes
- Symlinks ensure changes apply to your home directory

## Requirements

- Git
- Any dependencies for your configs (e.g., Nvim, Bash)
