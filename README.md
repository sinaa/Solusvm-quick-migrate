Solusvm quick vps migration script
=====================

Script for Quick migration of OpenVZ servers between SolusVM VPS nodes.
 - *__Quick note:__ It is __Solusvm independent__, and you can just follow step 1 below for __any__ openvz to openvz node.*

# Requirements
- Root ssh access on target node
- Port 22 as ssh port (or changing the code on the script)

# Usage
1. On source node, enter the following command:

    `sh migrate.sh [SOURCE_VPS_IP] [TARGET_NODE_IP]`

 _For the first time you will be prompted for root password_
2. After the vps transfer completion, login to your SolusVM node
3. Login to SolusVM interface and find the VPS ID (not openvz id) of the VPS you are transferring
4. Now Login to SolusVM node and enter the following command:

	`/scripts/vm-migrate [VPSID] [NEWNODEID]`

* If you have reached here, well done :-)

# BUGS ?
- Open issues on github
