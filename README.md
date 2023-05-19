# ansible
Ansible Playbook for System Configuration

# Pre Config: Debian 12 rc2
Add user generated with installer to sudo group:
`` `
su  -
us ermod -a -G sudo <user>
getent group sudo
su - <user>
```

Add sources list to apt:
```
sudo nano /etc/apt/sources.list
```
Change the above file to match the below example:
```
deb http://deb.debian.org/debian bookworm main non-free-firmware
deb-src http://deb.debian.org/debian bookworm main non-free-firmware

deb http://deb.debian.org/debian-security/ bookworm-security main non-free-firmware
deb-src http://deb.debian.org/debian-security/ bookworm-security main non-free-firmware

deb http://deb.debian.org/debian bookworm-updates main non-free-firmware
deb-src http://deb.debian.org/debian bookworm-updates main non-free-firmware
```

Update the initial install:
```
sudo apt update
sudo apt dist-upgrade -y
```

Install the following to facilitate auto-config:
```
sudo apt install ansible git
```
