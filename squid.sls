squid3:
 pkg.installed

squidguard:
 pkg.installed

/srv/salt/asetus:
 cmd.run:
   - source: salt://asetus.sh
asetus.sh:
 cmd.run:
   - source: salt://asetus
