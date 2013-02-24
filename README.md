Solusvm quick vps migration script
=====================

Script for Quick migration of OpenVZ servers between SolusVM VPS nodes.

# Requirements
- Root ssh access on target node
- Port 22 as ssh port (or changing the code on the script)

# Usage
- On source node, enter the following command:

`sh migrate.sh [SOURCE_VPS_IP] [TARGET_NODE_IP]`

-- For the first time you will be prompted for root password
- After the vps transfer completion, login to your SolusVM node
- Login to SolusVM interface and find the VPS ID (not openvz id) of the VPS you are transferring
- Now Login to SolusVM node and enter the following command:

`/scripts/vm-migrate [VPSID] [NEWNODEID]`

- If you have reached here, well done :-)

# BUGS ?
- Open issues on github
