#!/bin/bash
if command -v rg &> /dev/null
then
	rg 'TODO(.*):'
elif command -v grep &> /dev/null
then
	grep -rn 'TODO(.*):'
else
	printf 'grep and ripgrep are missing - cannot search\n'
fi
