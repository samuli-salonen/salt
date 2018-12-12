#bin/bash
sudo apt-get update
sleep 5s
sudo ufw allow 8888
sleep 2s
sudo ufw deny 145/tcp
sleep 2s
sudo ufw deny 138/udp
sleep 2s
sudo ufw enable
sleep 5s
echo -e 'acl manager proto cache_object\nacl localhost src 127.0.0.1/32\nacl localhost src 127.0.0.1/24\nacl localhost src 192.168.1.197/32\nacl localhost src 192.168.1.197/24\nacl localhost src 192.168.1.196/32\nacl localhost src 192.168.1.196/24\nacl localhost src 10.0.0.0/24\nacl to_localhost dst 127.0.0.0/8\nacl localnet src 0.0.0.0/8 192.168.100.0/24 192.168.101.0/24 192.168.0.0/24 192.168.1.1/24\nacl SSL_ports port 443\nacl Safe_ports port 80 # http\nacl Safe_ports port 3128\nacl Safe_ports port 21 # ftp\nacl Safe_ports port 443 # https\nacl Safe_ports port 70 # gopher\nacl Safe_ports port 210 # wais\nacl Safe_ports port 1025-65535 # unregistered ports\nacl Safe_ports port 280 # http-mgmt\nacl Safe_ports port 488 # gss-http\nacl Safe_ports port 591 # filemaker\nacl Safe_ports port 777 # multiling http\nacl blocksites dstdomain "/etc/squid/BannedAds.squid"\nacl CONNECT method CONNECT\nhttp_access deny blocksites\nhttp_access allow to_localhost\nicp_access allow all\nhtcp_access allow all\nhttp_access allow all \nhttp_access allow all localnet\nhttp_access allow all localhost\nhttp_port 8888\n# Allow all machines to all sites\n '|sudo tee /etc/squid/squid.conf
sleep 7s
echo 'test.com'|sudo tee /etc/squid/BannedAds.squid
sleep 5s
sudo systemctl restart squid.service
sleep 25s
echo "Squid on nyt asennettu!"
