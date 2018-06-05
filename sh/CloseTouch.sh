ID=-1

xinput > ~/sh/xinput

ID=`grep "TouchPad" ~/sh/xinput | cut -d "=" -f2 | cut -f 1`

if [ $ID -ne -1 ]
then
   xinput set-prop $ID "Device Enabled" 0
fi
