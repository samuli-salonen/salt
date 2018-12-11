apache2:
  pkg.installed
  
php:
  pkg.installed
  
mariadb:
  pkg.installed:
    - pkgs:
      - mariadb-server
      - mariadb-client
 
/var/www/html/index.html:
  file.managed:
    - source: salt://index.html

/etc/apache2/mods-enabled/userdir.conf:
  file.symlink:
    - target: ../mods-available/userdir.conf

/etc/apache2/mods-enabled/userdir.load:
  file.symlink:
    - target: ../mods-available/userdir.load

apache2service:
  service.running:
    - name: apache2
    - watch:
      - file: /etc/apache2/mods-enabled/userdir.conf
      - file: /etc/apache2/mods-enabled/userdir.load
      
lampsh:
  cmd.script:
    - name: lampsh.sh
    - source: salt://lampsh.sh
    - creates:
      - /etc/salt/tehty.log
