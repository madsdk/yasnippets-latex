#!/bin/bash

# Check for command line args.
if [ "$1" = "" ]; then
	echo "Usage: ./install.sh yasnippet-dir"
	echo "Example: ./install.sh ~/.emacs.d/plugins/yasnippet"
	exit 1
fi

# Create the latex-mode dir.
if [ ! -d "$1"/snippets/latex-mode ]; then
	mkdir "$1"/snippets/latex-mode
fi

# Copy needed files to the latex-mode dir.
cp *.yasnippet "$1"/snippets/latex-mode/
cp .yas-parents "$1"/snippets/latex-mode/
cp .yas-ignore-filenames-as-triggers "$1"/snippets/latex-mode/
cp .yas-make-groups "$1"/snippets/latex-mode/

exit 0
