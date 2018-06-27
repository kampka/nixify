dev-utils
=========

A collection of utilities used for development.


### nixify
Helps bootstrapping an opinionated [nix-shell](https://nixos.org/nix/manual/#sec-nix-shell) environment by creating a minimal shell.nix file and setting up an auto-env configuration for it.

Usage:
```shell
$ echo $PATH
/run/wrappers/bin:/etc/profiles/per-user/user/bin:/home/user/.nix-profile/bin:/nix/var/nix/profiles/default/bin:/run/current-system/sw/bin
$ mkdir my-project
$ nixify -p my-project my-project
Add nix expressions to your nix shell...
$ cd my-project
these derivations will be built:
  /nix/store/dljgnw4ii05dlb5i0xfpz30acl3j52kx-foobar.drv
these paths will be fetched (102.76 MiB download, 335.19 MiB unpacked):
  /nix/store/04c6780m5fgbfcwbnjl3qcmqzmdsn98m-rustc-1.24.0
copying path '/nix/store/04c6780m5fgbfcwbnjl3qcmqzmdsn98m-rustc-1.24.0' from 'https://cache.nixos.org'...
building '/nix/store/dljgnw4ii05dlb5i0xfpz30acl3j52kx-foobar.drv'...
created 2 symlinks in user environment
$ echo "$PATH"
/nix/store/y5rlyv6nz8134s687d95ysc2gakwx7am-patchelf-0.9/bin:/nix/store/rf7pnq8qk9bkjpl4s2pm5dm2pk4yqhrc-paxctl-0.9/bin:/nix/store/gqg2vrcq7krqi9rrl6pphvsg81sb8pjw-gcc-wrapper-7.3.0/bin:/nix/store/bm7pb1s7rx1ad80706b5xqrznq7fgpgx-gcc-7.3.0/bin:/nix/store/6ca5dl2wy0nh37li1n4b152fcazsp3f6-glibc-2.26-131-bin/bin:/nix/store/cb3slv3szhp46xkrczqw7mscy5mnk64l-coreutils-8.29/bin:/nix/store/cmxaqb5cbzy4jk26na842n6hy1s4yn19-binutils-wrapper-2.28.1/bin:/nix/store/b0zlxla7dmy1iwc3g459rjznx59797xy-binutils-2.28.1/bin:/nix/store/6ca5dl2wy0nh37li1n4b152fcazsp3f6-glibc-2.26-131-bin/bin:/nix/store/cb3slv3szhp46xkrczqw7mscy5mnk64l-coreutils-8.29/bin:/nix/store/04c6780m5fgbfcwbnjl3qcmqzmdsn98m-rustc-1.24.0/bin:/nix/store/cb3slv3szhp46xkrczqw7mscy5mnk64l-coreutils-8.29/bin:/nix/store/364b5gkvgrm87bh1scxm5h8shp975n0r-findutils-4.6.0/bin:/nix/store/cg3yhpr5hfr00y0aah23pgxiijpzl6nz-diffutils-3.6/bin:/nix/store/navldm477k3ar6cy0zlw9rk43i459g69-gnused-4.4/bin:/nix/store/s63b2myh6rxfl4aqwi9yxd6rq66djk33-gnugrep-3.1/bin:/nix/store/j79xs2j519bmvq0gihz8ff4nw5aj3vlh-gawk-4.2.0/bin:/nix/store/2p00w952ljb1172nsf3jm7nsjgsw5qpw-gnutar-1.30/bin:/nix/store/d7895h1an2pgcd6a3vx3yb5fbg786lci-gzip-1.9/bin:/nix/store/qqv6r9vkpb44rw5d8wyfpx64rgqzlvdm-bzip2-1.0.6.0.1-bin/bin:/nix/store/lhp5rw0dagi5mgqwr9i3x41240ba4ypz-gnumake-4.2.1/bin:/nix/store/zqh3l3lyw32q1ayb15bnvg9f24j5v2p0-bash-4.4-p12/bin:/nix/store/gd1mp76qr4zpbw3lccivhvi30b025x51-patch-2.7.6/bin:/nix/store/aakgkcvw6j54zg38zrn1w00sgxx0zj8b-xz-5.2.3-bin/bin:/home/user/bin:/run/wrappers/bin:/etc/profiles/per-user/user/bin:/home/user/.nix-profile/bin:/nix/var/nix/profiles/default/bin:/run/current-system/sw/bin

$ hack hack hack ...
$ cd $HOME
$ echo $PATH
/run/wrappers/bin:/etc/profiles/per-user/user/bin:/home/user/.nix-profile/bin:/nix/var/nix/profiles/default/bin:/run/current-system/sw/bin
```

For details about developing with nix-shell, have a look at the 10th Nix pill: [Developing with nix-shell](https://nixos.org/nixos/nix-pills/developing-with-nix-shell.html#developing-with-nix-shell)
