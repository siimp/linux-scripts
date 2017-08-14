# Centos 7

## add user to sudoers file
usermod -aG wheel username-here
## set hostname
hostnamectl set-hostname hostname-here
## start and autostart service
sudo systemctl start service-name-here
sudo systemctl enable service-name-here
