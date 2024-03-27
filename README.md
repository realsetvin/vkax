**VKAX**
<br/>

**Vero Kum Abdite Xenium**
<br/>

*"_With truth we arise, a hidden gift_"*
<br/>
<br/>


> [!NOTE]
> VKAX is an experimental crypto currency, forked from DASH but utilizing a CPU mining algorithm called MIKE. The VKAX community can ensure the algorithm remains asic resistant through hard forks in the future. 
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
First we must install the relevant dependencies. **Copy and paste** the following code into a terminal console on Ubuntu
<br/>

```
sudo apt-get install curl build-essential libtool autotools-dev automake pkg-config python3 bsdmainutils bison nohang

```

### Building from Source
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

### Starting the Daemon
Using **`systemd`** we can create a service which starts the VKAX daemon on boot, or restarts it after a crash
<br/>
<br/>

The following command will open a **blank text editor**

```
sudo nano 
```

You will **copy and paste** the below text into the blank file. (**CTRL + C** to copy and **CTRL + V** to paste) 

<br/>
To save the text file press 
