# ansible
Ansible Playbook for System Configuration

# Pre Config: Debian 12 Bookworm
Add user generated with installer to sudo group:
```
su  -
usermod -a -G sudo <user>
getent group sudo
su - <user>
```

Add sources list to apt:
```
sudo nano /etc/apt/sources.list
```

Change the above file to match the below example:
```
deb http://deb.debian.org/debian/ bookworm main
deb-src http://deb.debian.org/debian/ bookworm main
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

Run ansible pull:
```
sudo ansible-pull -U https://github.com/JoshuaJWhite/ansible.git
```
