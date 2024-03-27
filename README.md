**VKAX**
<br/>

**Vero Kum Abdite Xenium**
<br/>

*"_With truth we arise, a hidden gift_"*
<br/>
<br/>


> [!NOTE]
> VKAX is an experimental crypto currency, forked from DASH (and BITCOIN) but utilizing a CPU mining algorithm called MIKE. The VKAX community can ensure the algorithm remains asic resistant through hard forks in the future. 
<br/>

### Quick Links
[VKAX CLI Arguments & Commands](https://github.com/realsetvin/vkax/blob/master/doc/vkax-cli-wallet-arguments-and-commands)
<br/>
[VKAX Remote Procedure Calls (RPC)](https://github.com/realsetvin/vkax/blob/master/doc/vkax-remote-procedure-calls)
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
First we must install the relevant dependencies. **Copy and paste** the following code into a terminal console on Ubuntu (**CTRL + C** to copy and **CTRL + V** to paste) 

<br/>

```
sudo apt-get install curl build-essential libtool autotools-dev automake pkg-config python3 bsdmainutils bison nohang

```

### Make Daemon (Node)
After installing the prerequisites, we can **build the daemon from source**
```
sudo apt update && sudo apt upgrade &&
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

Then run the following command to clean up the build files
```
mkdkir /.vkax/
mv ~/vkax/src/vkax-cli ~/vkax/src/vkaxd /.vkax/
rm -r ~/vkax/
```


### Starting the Daemon
Using **`systemd`** we can create a service which starts the VKAX daemon on boot, and restarts it after a crash
<br/>
<br/>

First become a "**super user**"
```
sudo su
```

Then **create** and **enable** the systemd service
```
sudo touch /etc/systemd/system/vkax.service
sudo echo -e "[Unit]\nDescription=vkax daemon control service\n\n[Service]\nType=forking\nRestart=on-failure\nRestartSec=50s\nExecStartPre=/bin/sleep 5\nWorkingDirectory=/.vkaxcore/\nExecStart=/.vkaxcore/vkaxd\nRemainAfterExit=yes\n\n[Install]\nWantedBy=multi-user.target" >> /etc/systemd/system/vkax.service
sudo systemctl enable vkax
```
<br/>

Reboot for changes to take affect
```
sudo reboot
```

