## Automated User

> This is a bash script for an automated users creation. Now you just need to edit your `file.csv` and run our bash script to refresh your users on your system.

### Accessrights.sh

* Open your command prompt. 
* Then enter the following command :
```
./accessrights.sh
```
This is a bash script that permits you to create users from `file.csv`.

### DeleteAccessrights.sh

* Open your command prompt. 
* Then enter the following command :
```
./deleteaccessrights.sh
```
This is a bash script that permits you to delete users created from `file.csv`.

### RefreshAccessrights.sh

* Open your command prompt. 
* Then enter the following command :
```
./refreshaccessrights.sh
```
This is a bash script that permits you to create, delete and change the options of users from `file.csv`.  
`./refreshaccessrights.sh` permits to check and update, thanks to the cron every 5 minutes in case of `file.csv` modifications.
