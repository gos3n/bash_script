#!/bin/env sh

if [ -z $PSHOME ]; then
	export PSHOME="/opt/microsoft/powershell/7/"
else
	export PSHOME="/opt/microsoft/powershell/7/"
fi

if [ -z $PSModule ]; then
	export PSModulePath="/opt/microsoft/powershell/7"
else
	export PSModulePath="/opt/microsoft/powershell/7"
fi

if [ -z $PSReadLine ]; then
	export PSReadLine="$HOME/.local/share/powershell/PSReadLine/ConsoleHost_histrory.txt"
else
	export PSReadLine="$HOME/.local/share/powershell/PSReadLine/ConsoleHost_histrory.txt"
fi

