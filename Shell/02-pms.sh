PRESENT_DIRECTORY="`dirname \"$0\"`"
for i in ${PRESENT_DIRECTORY}/pms/*.sh
do
     . "$i"
done

