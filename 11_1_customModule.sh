# The custom module can be writen in any scripting language (like  unix shell scripting or python )  which can return JSON output
# git clone https://github.com/ansible/ansible.git
# cd /home/ujam/getansibleCostom/ansible/hacking
#  ./test-module -m /home/ujam/ansibleDir/playbooks/11_1_customModule.sh 

# Url for custom module " https://docs.ansible.com/ansible/latest/dev_guide/developing_modules_general.html " in python 

# 
#!/bin/bash

ping -c 1 192.168.33.95 > /dev/null 2>/dev/null

if [ $? == 0 ]
   then
      echo "{\"changed\": true , \"rc\": 0 }"
else
   echo "{\"failed\": true , \"msg\": \"failed to ping\", \"rc\":2}"
fi
