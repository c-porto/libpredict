<h1 align='center'> libpredict </h1>

<h2 align='center'> <strong> A satellite orbit prediction library. </strong> </h2>

## Disclaimer

This is a fork of **[la1k/libpredict](https://github.com/la1k/libpredict/)** and is inspired by **[philcrump's](https://github.com/philcrump/libpredict/)** fork of the same library. 
See the [License](#license) section for specifics.

## Major differences from la1k's

This fork is intended to be used by embedded systems, so it supports static allocated
structs, instead of the dynamic allocated ones from the original library. Another major 
change is that this fork intends to make the library MISRA-C 2012 compliant, which is 
a requirement for many critical embedded applications, like satellite's. Because of 
compliance, pretty much every single function of the original library will be modified.

## MISRA-C 2012 Compliance Progress

The following list contains the status of the library files:

- [X] Headers
- [ ] Orbit (Partially Compliant)
- [ ] Observer
- [X] SGP4
- [ ] SDP4
- [X] Sun
- [ ] Moon
- [X] Unsorted
- [X] Julian Date
- [ ] Refraction

## Building

To build the library it should be as simple as running:

``` bash
make
```

To specify the build directory you could run:

``` bash
make BUILD_DIR=/your/build/dir/
```

To specify a custom toolchain prefix like arm toolchain , you can do as follows:

``` bash
make TOOLCHAIN_PREFIX=arm-none-eabi- CC_FLAGS_APPEND="-mthumb -mcpu=cortex-m3" 
```

## Installation

```
make install
```

The install location is defined by `INSTALL_DIR`, which
defaults to `/usr/lib`. To relocate the whole installation (to make
usr/local etc. inside another directory, e.g., if you want to make a
tarball or package it afterwards), use `make INSTALL_DIR=/foo/bar install`.

## License

 Copyright 1991-2006 John A. Magliacane (KD2BD)
 
 Copyright 2013- Akademisk radioklubb (LA1K)
 
 Copyright 2013-2015 Knut Magnus Kvamtrø (LA3DPA)

This program is free software; you can redistribute it and/or modify it
under the terms of the GNU General Public License as published by the
Free Software Foundation; either version 2 of the License, or (at your
option) any later version.

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
Public License for more details.

You should have received a copy of the GNU General Public License along
with this program; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
