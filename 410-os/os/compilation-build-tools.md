# Compilation and build tools

Typical build tools on GNU/Linux systems
- gcc
- make
- autoconf
- automake
- libtool
- xz



* `build-essential` (version 12.8ubuntu1.1) Informational list of build-essential packages. Depends:
- gcc       >= 4:9.2
- g++       >= 4:9.2
- dpkg-dev  >= 1.17.11
- make
- libc6-dev | libc-dev

Starting with `dpkg >= 1.14.18` this package is required for building Debian packages. If you do not plan to build Debian packages, you don't need this package. This package contains an informational list of packages which are considered essential for building Debian packages. The build-essential package also depends on the packages mentioned on that list in order to facilitate installing the build-essential packages (da fuck?!). If you have this package installed, you only need to install whatever a package specifies as its *build-time dependencies* to build it. Conversely, if you are determining what your package needs to build-depend on, you can always leave out the packages the build-essential package depends on. **This package is NOT the definition of what packages are build-essential**; the real definition is in the *Debian Policy Manual*. This package merely contains an informational list, which is all most people need (however, if this package and the manual disagree, the manual is correct).
