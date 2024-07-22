#!/bin/bash

read -p "Enter path for script: " SCRIPTPATH
read -p "Enter name for your script: " NAME
mkdir -p $SCRIPTPATH
ls  $SCRIPTPATH/$NAME 2>/dev/null
if [ $? -eq 0 ]
   then 
	echo "BED NAME " $NAME " Such a file exists"
   else
echo "Script will be created on path " $SCRIPTPATH/$NAME
echo -e "#!/bin/bash\n#\n#Write the code here\n#\n" > $SCRIPTPATH/$NAME
chmod +x $SCRIPTPATH/$NAME
nano $SCRIPTPATH/$NAME
echo "DONE"
fi
