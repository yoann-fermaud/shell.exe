## Automated Login


> This is a bash script for an automated login. Now you don't need to visit a portal and enter the details manually anymore. Just run the "alcasar_login" bash file to automate your portal entry.

### Method With Curl

* Open your command prompt. 
* Then enter the following command :

```
./alcasar_login email password
```
**NB** : argument `$1 for email` and `$2 for password` 

This is a bash script that permit you to enter in alcasar without your browser or anything else.

### Method With Lynx

This bash script uses `lynx`. So, you need to install `lynx` on your on your linux system.

* Open your command prompt
* Then enter the following command

```
lynx --version
```
 #### To install `linx`

```
sudo apt-get install lynx
```
Now you can use my bash script `alcasar_loginLynx`. 
```
./alcasar_loginLynx email password
```
This is a bash script for our school "LaPlateforme" portal which assists students in automatic login.  
Don't forget to put in argument `$1 for email` and `$2 for password`.
