read -p "Enter Username: " name
read -p "Expire month: " exdate

useradd $name -m -d /home/$name -s /bin/nologin
sudo passwd $name
chage -E `date -d $exdate" month" +"%Y-%m-%d"` $name
echo "-----------------------"
echo -e 'Username: '$name
echo -e 'Validate: '`date -d $exdate" month" +"%Y-%m-%d"`
echo -e "-----------------------\n"

