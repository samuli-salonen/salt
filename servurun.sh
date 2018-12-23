#bin/bash teamspeak3 server installation script
echo -e "\E[1;33mServu asentuu... this will take up to 10 minutes"
sleep 5s #note that some times installation failes, because there is too many commands driven at once, this is fixed by adding sleep command after update, upgrade and installation commands like sudo apt-get upgrade.
sudo apt-get update #updates
sleep 20s
sudo apt-get -y upgrade #upgrades
sleep 20s
sudo adduser teamspeak --gecos ",,," --disabled-login #new user for teamspeak files. Also for security.
sleep 5s
sudo wget https://files.teamspeak-services.com/releases/server/3.5.1/teamspeak3-server_linux_amd64-3.5.1.tar.bz2 #teamspeak 3 server files.
sleep 15s
tar -jxvf teamspeak3-server_linux_amd*.tar.bz2 #unzips teamspeak3 server
sleep 20s
sudo mv teamspeak3-server_linux_amd64 /usr/local/teamspeak #moves files to the teamspeak user on server
sleep 7s
sudo chown -R teamspeak:teamspeak /usr/local/teamspeak #permission configuration
sleep 5s
sudo ln -s /usr/local/teamspeak/ts3server_startscript.sh /etc/init.d/teamspeak #adds auto start script
sleep 10s
sudo update-rc.d teamspeak defaults #updates services
sleep 10s
sudo ufw allow 9987/udp #firewall rules to allow ts3
sleep 5s
sudo ufw allow 10011/tcp #-''-
sleep 5s
sudo ufw allow 3033/tcp #-''-
sleep 5s
sudo ufw enable #enables ubuntu firewall
sleep 5s
sudo echo ''|sudo tee /usr/local/teamspeak/.ts3server_license_accepted #makes file to accept the ts3 server eula
sleep 5s
sudo service teamspeak start #starts the server
sleep 7s
sudo apt-get install -y apache2
sleep 10s
sudo apt-get install -y mysql-server
sleep 10s
sudo apt install -y php-pear php-fpm php-dev php-zip php-curl php-xmlrpc php-gd php-mysql php-mbstring php-xml libapache2-mod-php
sleep 10s
sudo a2ensite default-ssl.conf
sleep 5s
sudo service apache2 reload
sleep 10s
sudo service apache2 restart
sleep 10s
sudo mkdir /var/www/html/page3/
sleep 5s
sudo cp /etc/index.html /var/www/html/
sleep 5s
sudo cp /etc/page2.html /var/www/html/
sleep 5s
sudo cp /etc/style.css /var/www/html/
sleep 5s
sudo cp /etc/page3.html /var/www/html/page3/
sleep 5s
sudo cp /etc/style1.css /var/www/html/page3/
sleep 5s
sudo ufw allow 80/tcp
sleep 5s
sudo ufw allow 443/tcp
sleep 10s
sudo apt-get install -y openssh-server
sleep 10s
sudo ufw allow 22/tcp
sleep 10s
sudo ufw deny 137
sleep 5s
sudo ufw deny 138
sleep 5s
sudo ufw deny 139
sleep 5s
sudo ufw deny 445
sleep 5s
sudo ufw deny 7777
sleep 5s
echo -e "\E[1;33mServu on nyt asennttu!"

