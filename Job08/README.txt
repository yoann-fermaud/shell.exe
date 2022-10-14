get_logs.sh
path=$(pwd) doesn't work with crontab
so if you want to use crontab put in path="/home/usr/your/path/Job08"

crontab -e
* * * * * /home/usr/your/path/Job08/get_logs.sh
