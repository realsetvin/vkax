**VKAX**
<br/>

**Vero Kum Abdite Xenium**
<br/>

*"_With truth arises a hidden gift_"*
<br/>

> [!NOTE]
> VKAX is an experimental crypto currency, forked from DASH (and BITCOIN) but utilizing a CPU mining algorithm called MIKE. The VKAX community can ensure the algorithm remains asic resistant through hard forks in the future. 
<br/>

### Quick Links
[VKAX Legacy Command Line Reference](https://github.com/realsetvin/vkax/blob/master/doc/vkax-command-line-rpc-api-reference.md)
<br/>
[VKAX CLI Arguments & Commands](https://github.com/realsetvin/vkax/blob/master/doc/vkax-cli-wallet-arguments-and-commands.md)
<br/>
[VKAX Remote Procedure Calls (RPC)](https://github.com/realsetvin/vkax/blob/master/doc/vkax-remote-procedure-calls.md)
<br/>


## Getting Started
<br/>




## Building from Source
(*This method has been tested on Ubuntu, to build on other systems please see the documentation
[UNIX](https://github.com/realsetvin/vkax/blob/master/doc/build-unix.md), 
[WINDOWS](https://github.com/realsetvin/vkax/blob/master/doc/build-windows.md), 
[NETBSD](https://github.com/realsetvin/vkax/blob/master/doc/build-netbsd.md) or 
[OSX](https://github.com/realsetvin/vkax/blob/master/doc/build-osx.md). 
Generic build information can be found [HERE](https://github.com/realsetvin/vkax/blob/master/doc/build-generic.md).*)
<br/>
<br/>
### Install Dependencies
We must install the relevant dependencies. **Copy and paste** the following code into a terminal console on Ubuntu (**CTRL + C** to copy and **CTRL + V** to paste) 
```
sudo apt-get install curl build-essential libtool autotools-dev automake pkg-config python3 bsdmainutils bison nohang

```
<br/>

### Creating VKAX User
Run the below commands in a terminal console one at a time. We will need to create a new **User** to run the daemon. (You can give it any password or press **enter** to skip.)
```
sudo adduser vkax
```
```
sudo su vkax
```
<br/>

### Make the Daemon (Node)
After installing the prerequisites and creating a vkax user, we can **build the daemon from source**
```
sudo apt update && sudo apt upgrade &&
git clone https://github.com/realsetvin/vkax &&
cd vkax/depends/ &&
chmod +x conf* &&
make &&
cd .. &&
./autogen.sh &&
./configure --disable-tests --disable-bench --without-gui --prefix=$PWD/depends/x86_64-pc-linux-gnu/ &&
make
```
<br/>

**Clean** up the build files
```
chmod 777 /home/vkax-test/.vkaxcore
mkdkir /.vkaxcore/
mv ~/vkax/src/vkax-cli ~/vkax/src/vkaxd /.vkaxcore/
rm -r ~/vkax/
```
<br/>

**Exit** as the vkax user
```
exit
```


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
sudo touch /etc/systemd/system/vkax.service
sudo echo -e "[Unit]\nDescription=vkax daemon control service\n\n[Service]\nType=forking\nRestart=on-failure\nRestartSec=50s\nExecStartPre=/bin/sleep 5\nWorkingDirectory=/.vkaxcore/\nExecStart=/.vkaxcore/vkaxd\nRemainAfterExit=yes\n\n[Install]\nWantedBy=multi-user.target" >> /etc/systemd/system/vkax.service
sudo systemctl enable vkax
```
<br/>

**Reboot** for changes to take affect
```
sudo reboot
```
<br/>

We can **Watch** the **Status** of our daemon at any time with the following command
```
watch systemctl status vkax
```

