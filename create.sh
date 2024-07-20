#!/usr/bin/env bash

# Creates a script file with a pre-added shebang

FILENAME=$1
if [ -z $FILENAME ]
then
	echo "Please supply a file name."
	exit 1
fi

if [ -f $FILENAME ]
then
	echo $FILENAME + " already exists. Would you like to replace it?"
	read -r REPLACE
	if [ $REPLACE -ne "[Yy]*" ]
	then
		exit 1
	fi
fi

touch $FILENAME
chmod 755 $FILENAME
echo "#!/usr/bin/env bash" >> $FILENAME

exit 0
