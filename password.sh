#!/bin/sh

echo -n "Password: "
read pass

count=$(echo $pass | sed 's/[^A-Za-z0-9]//g')
echo $count | grep "[A-Z]" | grep "[a-z]" | grep "[0-9]"

if [ $? != 0 ]; then
echo "Not a valid password"
exit
fi
count=$(printf $count | wc -c)
if [ $count -lt 8 ]; then

echo "Weak Password"
exit

else

echo "Strong Password"
exit

fi

