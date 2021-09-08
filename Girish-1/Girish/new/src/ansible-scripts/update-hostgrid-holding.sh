#!/bin/bash
cd /usr/loca/src/ansible-scripts/hostgrid-holding && git pull https://dipaksalve13:b8e740c08d98c4a009c842ca6b9d89da2345534b@github.com/LucidCube/hostgrid-holding.git && rsync -vprlogDtH /usr/loca/src/ansible-scripts/hostgrid-holding/plesk/ /var/www/vhosts/.skel/0/
