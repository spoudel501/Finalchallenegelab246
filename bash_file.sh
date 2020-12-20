!# /bin/bash


echo "Create group name "
read group_name
echo "Create username "

read user_name
groupadd $group_name
useradd -g $group_name -s /bin/bash $user_name

echo "abcd" | passwd --stdin $user_name > /dev/null
mkdir /$user_name
chown $user_name:$group_name /$user_name
chmod 1770 /$user_name 
