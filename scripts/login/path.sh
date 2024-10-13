#!/bin/env sh

# default path
if [[ -n "$PATH" ]]; then
	PATH='/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games';export PATH
else
	PATH='/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games';export PATH
fi

if [ -d $HOME/bin ]; then
	export PATH="$HOME/bin:$PATH"
fi

if [ -d $HOME/.local ]; then
	export PATH="$HOME/.local/bin:$PATH"
fi

