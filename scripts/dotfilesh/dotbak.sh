#!/usr/bin/zsh

## verify env
if [[ -z $DOTFILES_DIR ]]; then
	DOTFILES_DIR="$HOME/lab/repo/sys/dotfiles"
fi

if [[ -z $DOTFILES_DEV ]]; then
	DOTFILES_DEV="$HOME/lab/dev/repo/gh/dotfiles"
fi

if [[ -z $dotdir ]]; then
	dotdir="$DOTFILES_DIR"
fi

if [[ -z $dotdev ]]; then
	dotdev="$DOTFILES_DEV"
fi

## backup
if [[ -n $dotdev ]]; then
	if [ -d $(echo $dotdev) ]; then
		rm -rf $(echo $dotdev)
	fi
fi

if [[ -n $dotdir ]]; then
	if [ -d $(echo $dotdir) ]; then
		cp -r $(echo $dotdir) $(echo dotdev)
	fi
fi

