#!/bin/sh

# The Dogg 2006

# Be sure to install autossh first
# apt install autossh -y

# USAGE
# remoteport = This creates a localport on the remote side
# hostname = This is your ssh destination on the remote side -> typically this will be localhost, so just leave it as localhost
# localport = This is your ssh local port -> check /etc/ssh/sshd_config for your port configuration
# destport = Remote side ssh port
# 0.0.0.0 = Remote side ip address
# -p 443 = This is your remote side ssh port -> check /etc/ssh/sshd_config for your port configuration on remote side

## On remote host, log into reverse host this way,
## ssh localhost -p 8100

# /usr/bin/autossh                  flags                                                     remoteport:hostname:localport         nextJumpHost -p port
/usr/bin/autossh -f -N -o "ServerAliveInterval 10" -o "ServerAliveCountMax 3" -i /root/.ssh/id_rsa -R 8100:localhost:443 0.0.0.0 -p 443
