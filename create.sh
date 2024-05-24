#!/usr/bin/env bash

# Creates a script file with a pre-added shebang

FILENAME=$1
touch $FILENAME
chmod 755 $FILENAME
echo "#!/usr/bin/env bash" >> $FILENAME

exit 0