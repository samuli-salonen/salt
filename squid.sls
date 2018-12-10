squid3:
 pkg.installed

squidguard:
 pkg.installed

/srv/salt/asetus.sh:
  cmd.script:
    - name: asetus.sh
    - source: salt://asetus.sh
    - creates:
      - /etc/logit/done.log
