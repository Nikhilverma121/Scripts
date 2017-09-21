#/bin/bash
getUsage(){
pid=$(sshpass -p $3 ssh $2@$1 pidof "$3")
mem=$(ssh $2@$1 ps --no-headers -o '%mem' -p $pid)
echo $1 ":" $4 ":" $mem
}
echo "IP username password process_name"
read  IP userName password process_name 
getUsage $IP $userName $password $process_name

