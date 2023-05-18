# ansible
Ansible Playbooks for System Configuration

# Debian 12 rc2
Add user to sudo group:
```
su -
usermod -a -G sudo <user>
getent group sudo
su - <user>
```

Add sources list to apt:
```
sudo nano /etc/apt/sources.list
```
Change the file to match the below example:
```
deb http://deb.debian.org/debian bookworm main non-free-firmware
deb-src http://deb.debian.org/debian bookworm main non-free-firmware

deb http://deb.debian.org/debian-security/ bookworm-security main non-free-firmware
deb-src http://deb.debian.org/debian-security/ bookworm-security main non-free-firmware

deb http://deb.debian.org/debian bookworm-updates main non-free-firmware
deb-src http://deb.debian.org/debian bookworm-updates main non-free-firmware
```

Update:
```
sudo apt update
sudo apt dist-upgrade -y
```

Install:
```
sudo apt install ansible git
```
