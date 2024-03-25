package=gmp
$(package)_version=6.3.0
$(package)_download_path=https://gmplib.org/download/gmp/
$(package)_file_name=gmp-$($(package)_version).tar.gz
$(package)_sha256_hash=e56fd59d76810932a0555aa15a14b61c16bed66110d3c75cc2ac49ddaa9ab24c

define $(package)_set_vars
$(package)_config_opts+=--enable-cxx --enable-fat --with-pic --disable-shared
$(package)_cflags_armv7l_linux+=-march=armv7-a
$(package)_cflags_aarch64_darwin+=-march=armv8-a
endef

define $(package)_config_cmds
  $($(package)_autoconf)
endef

define $(package)_build_cmds
  $(MAKE)
endef

define $(package)_stage_cmds
  $(MAKE) DESTDIR=$($(package)_staging_dir) install
endef

