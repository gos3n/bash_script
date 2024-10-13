#!/bin/env sh

### path
#
export PATH=$HOME/bin:$PATH; wait
export PATH=$HOME/.local/bin:$PATH; wait
export PATH=$HOME/.cargo/bin:$PATH; wait
export PATH=/usr/share:$PATH; wait
export PATH=/usr/local/share:$PATH; wait
export PATH=$HOME/.local/share:$PATH; wait

### editor
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='nvim'
else
	export EDITOR='nvim'
fi

export EDITOR='nvim'
export SUDO_EDITOR='nvim'

### user configuration
#
### if
#
if [ -z $DOTFILES_DIR ]; then
	export DOTFILES_DIR="$HOME/dotfiles"
else
	export DOTFILES_DIR="$HOME/dotfiles"
fi

if [ -d "$HOME/lab/dev/repo/gh/dotfiles" ]; then
	if [ -z $DOTFILES_DEV ]; then
		export DOTFILES_DEV="$HOME/lab/dev/repo/gh/dotfiles"
	else
		export DOTFILES_DEV="$HOME/lab/dev/repo/gh/dotfiles"
	fi
fi

if [ -d $HOME/.venv ]; then
	if [ -z $VENV_DIR ]; then
		export VENV_DIR="$HOME/.venv"
	else
		export venvdir="$VENV_DIR"
	fi
fi

if [[ -n $VENV_DIR ]]; then
	if [ -z $venvdir ]; then
		export venvdir="$VENV_DIR"
	fi
fi

if [[ -n $DOTFILES_DIR ]]; then
	if [ -z $dotdir ]; then
		export dotdir=$(echo $DOTFILES_DIR)
	else
		export dotdir=$(echo $DOTFILES_DIR)
	fi
fi

if [[ -n $DOTFILES_DEV ]]; then
	if [ -z $dotdev ]; then
		export dotdev=$(echo $DOTFILES_DEV)
	else
		export dotdev=$(echo $DOTFILES_DEV)
	fi
fi

if [ -z $PYTHONWARNINGS ]; then
	export PYTHONWARNINGS="ignore::DeprecationWarning"
else
	export PYTHONWARNINGS="ignore::DeprecationWarning"
fi

