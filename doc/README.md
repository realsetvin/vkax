VKAX Core
==========

This is the official reference wallet for VKAX digital currency and comprises the backbone of the VKAX peer-to-peer network. You can [download VKAX Core](https://www.VKAX.org/downloads/) or [build it yourself](#building) using the guides below.

Running
---------------------
The following are some helpful notes on how to run VKAX Core on your native platform.

### Unix

Unpack the files into a directory and run:

- `bin/VKAX-qt` (GUI) or
- `bin/VKAXd` (headless)

### Windows

Unpack the files into a directory, and then run VKAX-qt.exe.

### macOS

Drag VKAX Core to your applications folder, and then run VKAX Core.

### Need Help?

* See the [VKAX documentation](https://docs.VKAX.org)
for help and more information.
* Ask for help on [VKAX Discord](http://stayVKAXy.com)
* Ask for help on the [VKAX Forum](https://VKAX.org/forum)

Building
---------------------
The following are developer notes on how to build VKAX Core on your native platform. They are not complete guides, but include notes on the necessary libraries, compile flags, etc.

- [macOS Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Windows Build Notes](build-windows.md)
- [OpenBSD Build Notes](build-openbsd.md)
- [NetBSD Build Notes](build-netbsd.md)
- [Gitian Building Guide](gitian-building.md)

Development
---------------------
The VKAX Core repo's [root README](/README.md) contains relevant information on the development process and automated testing.

- [Developer Notes](developer-notes.md)
- [Productivity Notes](productivity.md)
- [Release Notes](release-notes.md)
- [Release Process](release-process.md)
- Source Code Documentation ***TODO***
- [Translation Process](translation_process.md)
- [Translation Strings Policy](translation_strings_policy.md)
- [Travis CI](travis-ci.md)
- [JSON-RPC Interface](JSON-RPC-interface.md)
- [Unauthenticated REST Interface](REST-interface.md)
- [Shared Libraries](shared-libraries.md)
- [BIPS](bips.md)
- [Dnsseed Policy](dnsseed-policy.md)
- [Benchmarking](benchmarking.md)

### Resources
* See the [VKAX Developer Documentation](https://VKAXcore.readme.io/)
  for technical specifications and implementation details.
* Discuss on the [VKAX Forum](https://VKAX.org/forum), in the Development & Technical Discussion board.
* Discuss on [VKAX Discord](http://stayVKAXy.com)
* Discuss on [VKAX Developers Discord](http://chat.VKAXdevs.org/)

### Miscellaneous
- [Assets Attribution](assets-attribution.md)
- [VKAX.conf Configuration File](VKAX-conf.md)
- [Files](files.md)
- [Fuzz-testing](fuzzing.md)
- [Reduce Memory](reduce-memory.md)
- [Reduce Traffic](reduce-traffic.md)
- [Tor Support](tor.md)
- [Init Scripts (systemd/upstart/openrc)](init.md)
- [ZMQ](zmq.md)
- [PSBT support](psbt.md)

License
---------------------
Distributed under the [MIT software license](/COPYING).
This product includes software developed by the OpenSSL Project for use in the [OpenSSL Toolkit](https://www.openssl.org/). This product includes
cryptographic software written by Eric Young ([eay@cryptsoft.com](mailto:eay@cryptsoft.com)), and UPnP software written by Thomas Bernard.
