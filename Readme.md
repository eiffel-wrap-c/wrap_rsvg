# wrap_rsvg
`wrap_rsvg` is an Eiffel binding of [Librsv C API](https://github.com/GNOME/librsvg) 
using [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.

This is librsvg - A small library to render Scalable Vector Graphics (SVG), associated with the GNOME Project. It renders SVG files to Cairo surfaces. Cairo is the 2D, antialiased drawing library that GNOME uses to draw things to the screen or to generate output for printing.

## Requirements 

*  [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.
*  [Librsvg C API](https://github.com/GNOME/librsvg)


## Download and  Install

### Linux
Here I will describe the installation for Ubuntu check the [librsvg documentation](https://github.com/GNOME/librsvg/blob/mainline/COMPILING.md) to know
how to install it in other Platforms.

##### Installing dependencies

	apt-get install -y gcc make rustc cargo \
	automake autoconf libtool gettext itstool \
	libgdk-pixbuf2.0-dev libgirepository1.0-dev \
	gtk-doc-tools git \
	libxml2-dev libcairo2-dev libpango1.0-dev libcroco3-dev
	
##### Basic compilation instructions

If you are compiling a tarball:

	./configure
	make
	make install

See the [INSTALL](https://github.com/GNOME/librsvg/blob/mainline/INSTALL) file for details on options you can pass to the configure script to select where to install the compiled library.

If you are compiling from a git checkout:

	./autogen.sh
	make
	make install
	

##### Workaround LInux
If you got the error `gdk-pixbuf-query-loaders not found in path` 

	sudo ln -s /usr/lib/*/gdk-pixbuf-2.0/gdk-pixbuf-query-loaders /usr/local/bin/gdk-pixbuf-query-loaders

Now try again to compile and install the library.

	
### Windows
Using vckpg

		vckpg install librsvg:x64-windows

Copy the `.lib` files `rsvg-2.40.lib` and `cairo.lib` to `$ECF_CONFIG_PATH/C/lib`.
Be sure to have the `dlls` in the PATH before running the example.

## Status

Work in progress


## Examples
* [SVG Rendering to PNG usign Cairo](examples/simple) `Shows how to SVG Rendering to PNG using Cairo`.

### How to compile the C library glue code.

Before to use the examples you will need to compile the C glue code, go to 

	library/generated_wrapper/c/src

and run

	finish_freezing --library

It will copy the C lib `eif_librsvg.a` to `$ECF_CONFIG_PATH/C/spec/$(ISE_PLATFORM)/lib/`  or `eif_librsvg.lib`  to `$ECF_CONFIG_PATH/C/spec/$ISE_C_COMPILER/$ISE_PLATFORM/lib` 






