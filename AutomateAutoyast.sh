VMgr=~/bin/VB/VBoxManage.exe
sndkey="$VMgr controlvm $1 keyboardputscancode"
sndstr="$VMgr controlvm $1 keyboardputstring"

$VMgr startvm $1
sleep 5
$sndkey 0e 50 0e d0

while read -r line
do
echo $line
$sndstr $line
sleep 1
done < ~/cmdline

$sndkey 1c 9c
