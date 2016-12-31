#!/bin/sh

echo "This will overwrite any dotfiles you already have!"
echo "CTRL+C out of this in the next 5 seconds if you want to abort..."

sleep 5

for f in *; do
	# Exlude this install file
	if [ $f != $(basename $0) ];
	then
		ln -sf $(pwd)/$f ~/.$f
	fi
done
