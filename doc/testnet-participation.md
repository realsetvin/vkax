## Participating in the VKAX Test Net
Ubuntu is an open source operating system which is easy to use for end users, but still powerful and stable enough to be used as a full time server. 

<br/>

> [!WARNING]
> Failure to follow instructions may result in an incorrect build! The order of commands is important, please ensure you review each step.
<br/>

### Getting Ubuntu 
To participate in the VKAX Test Net you will need to get a [Ubuntu](https://ubuntu.com/) system operational - either locally or with a cloud service. 

Ubuntu is very powerful and lightweight, meaning you can run an entire operating system with only 1 cpu core and less than 1 gig of ram.

Some local examples include, a rasberry pi, old hardware like a laptop or an unused pc - or even from within your main PC using [virtualbox](https://duckduckgo.com/?q=how+to+install+ubuntu+on+virtual+box) or [vmware workstation](https://duckduckgo.com/?q=how+to+install+ubuntu+on+vmware+workstation). 

If you do not have any hardware resources available or you want to run multiple nodes, there is a [**list of services which offer free trials or an always free option**](https://linktr.ee/setvin) for each individual.

By learning how to use VKAX in the test net, you will prepare yourself to do things like mine solo or run a masternode by yourself on the main net.

<br/>
<br/>

### Install Dependencies
Before proceeding to do anything, we must first install the relevant dependencies. **Copy and paste** the following code into a terminal console on Ubuntu 
(Press the **button on the right** of the code block, or press **CTRL + C** to copy and then **CTRL + V** to paste) 
```
sudo apt-get install curl build-essential libtool autotools-dev automake pkg-config python3 bsdmainutils bison nohang &&
sudo apt update -y && sudo apt upgrade -y
```
<br/>

### Create VKAX User
Run the below commands in a terminal console one at a time. We will need to create a new **User** to run the daemon. 
(You can give it any password or press **enter** to skip.)
```
sudo adduser vkax-test
```
**Login** as the VKAX user
```
sudo su vkax-test
```
<br/>

### Make the Daemon (Node)
After installing the prerequisites and becoming the vkax-test user, we can **build the daemon from source**
```
cd &&
git clone https://github.com/realsetvin/vkax &&
cd vkax/depends/ &&
chmod +x conf* &&
make &&
cd .. &&
./autogen.sh &&
./configure --disable-tests –disable-bench --without-gui --prefix=$PWD/depends/x86_64-pc-linux-gnu/ &&
make
```
<br/>

**Clean** up the build files
```
mkdkir /.vkax/
mv ~/vkax/src/vkax-cli ~/vkax/src/vkaxd /.vkax/
rm -r ~/vkax/
```
<br/>

**Exit** as the vkax-test user
```
exit
```
<br/>
<br/>


### Starting the Daemon
Using **`systemd`** we can create a service which starts the VKAX daemon on boot, and restarts it after a crash
<br/>
<br/>

Become a "**Super User**"
```
sudo su
```

**Create** and **Enable** the systemd service
```
sudo touch /etc/systemd/system/vkax-test.service
sudo echo -e "[Unit]\nDescription=vkax test daemon control service\n\n[Service]\nType=forking\nRestart=on-failure\nRestartSec=50s\nExecStartPre=/bin/sleep 5\nWorkingDirectory=/home/vkax-test/.vkaxcore/\nExecStart=/home/vkax-test/.vkaxcore/vkaxd\nRemainAfterExit=yes\n\n[Install]\nWantedBy=multi-user.target" >> /etc/systemd/system/vkax-test.service
sudo systemctl enable vkax-test
```
<br/>

**Reboot** for changes to take affect
```
sudo reboot
```
<br/>

We can **Watch** the **Status** of our daemon at any time with the following command
```
watch systemctl status vkax-test
```
