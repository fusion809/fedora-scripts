PRESENT_DIRECTORY="`dirname \"$0\"`"
for i in ${PRESENT_DIRECTORY}/common-scripts/*.sh
do
     . "$i"
done

