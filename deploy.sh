#!/bin/bash

m=$(umask)

if [[ $(umask) != "0066" ]]; then
	echo "umask is set incorrectly. Please fix and then re-run."
	exit 1
fi

touch /tmp/itran

