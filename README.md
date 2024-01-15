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


# Pre Config: Proxmox 8

Run the following to facilitate ansible playbook configuration:

First, copy ssh key to proxmox server:
```
$ ssh-copy-id -i ~/.ssh/<ssh private key> <pve user>@<pve ip>
```

Next, ssh in then update the package cache and install ansible and dependencies:
```
# apt update
# apt install ansible git
```

Lastly, run the ansible playbook for proxmox from local device:
```
$ ansible-playbook proxmox.yml
```

Furthermore, ensure IOMMU is turned on in the BIOS.
For Dell PowerEdge 13th Gen units this is located at:
System BIOS > Processor Settings > Virtualization Technology > "Enabled"
System BIOS > Integrated Devices > SR-IOV Global Enable > "Enable"

