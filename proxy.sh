#linux system script to set mec system proxy in terminal 
#rename the file as proxy.sh
#run chmod +x proxy.sh to set the script as executable 

#! /bin/bash
 
cd /etc/apt;
sudo  touch apt.conf;
sudo sh -c 'echo  "Acquire::http::proxy \"http://mec:mec@192.168.0.4:3128\";
		\nAcquire::https::proxy \"https://mec:mec@192.168.0.4:3128\";
		\nAcquire::ftp::proxy \"ftp://mec:mec@192.168.0.4:3128\";\n"> apt.conf';
cat apt.conf;

#JACOB LUKOSE






#( stack overflow )
# echo "[some repository]" | sudo tee -a /etc/apt/sources.list
# The tee command is called as the superuser via sudo and the -a argument tells tee to append to the file instead of overwriting it.

# Your original command failed, as the IO redirection with >> will be done as the regular user, only your echo was executed with sudo.

# Calling a sudo 'subshell' like

# sudo sh -c 'echo "[some repository]" >> /etc/apt/sources.list'
