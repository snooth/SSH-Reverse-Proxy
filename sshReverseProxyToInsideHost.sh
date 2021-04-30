#!/bin/sh

## The Dogg 2007
# Execute this command to port forward to ESXi host.
# Reverse SSH session must be active first from internal to citywestjumperguest before this will work.

# Be sure to install autossh first
# apt install autossh -y

# USAGE
# remoteSidePort = This creates a localport on the remote side
# localhost = This is your ssh destination on the remote side -> typically this will be localhost, so just leave it as localhost
# localSidePort = This is your ssh local port -> check /etc/ssh/sshd_config for your port configuration
# destport = Remote side ssh port
# 0.0.0.0 = Remote side ip address
# -p 8100 = This is your remote side ssh port -> check /etc/ssh/sshd_config for your port configuration on remote side
#           --> also check if session is established, run netstat -ntlp and check to see port 8100 has been established

## On remote host, log into reverse host this way,
## Open RDP client, use localhost as your destination and port 8100 and you should be able to remote desktop through to the windows client. 

### Example is for RDP on port 3389
# autossh       remoteSidePort:remoteSideIpaddress:localSidePort         nextJumpHost -p port
/usr/bin/autossh -f -N -L 3389:x.x.x.x:3389 localhost -p 8100
