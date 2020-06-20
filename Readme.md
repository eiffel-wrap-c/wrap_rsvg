# wrap_rsvg
`wrap_rsvg` is an Eiffel binding of [Librsv C API](https://github.com/GNOME/librsvg) 
using [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.

This is librsvg - A small library to render Scalable Vector Graphics (SVG), associated with the GNOME Project. It renders SVG files to Cairo surfaces. Cairo is the 2D, antialiased drawing library that GNOME uses to draw things to the screen or to generate output for printing.

## Requirements 

*  [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.
*  [Librsvg C API](https://github.com/GNOME/librsvg)


## Download and  Install

Check the travis file 
https://github.com/cloudflare/quiche/blob/master/.travis.yml

### Linux

	
### Windows
Using vckpg

		vckpg install librsvg:x64-windows

## Status

Work in progress


## Examples
* [SVG Rendering to PNG usign Cairo](examples/simple) `Shows how to SVG Rendering to PNG using Cairo`.

### How to compile the C library glue code.

Before to use the examples you will need to compile the C glue code, go to 

	library/generated_wrapper/c/src

and run

	finish_freezing --library

It will copy the C lib `eif_quiche.a` to `$ECF_CONFIG_PATH/C/spec/$(ISE_PLATFORM)/lib/`  or `eif_quiche.lib`  to `$ECF_CONFIG_PATH/C/spec/$ISE_C_COMPILER/$ISE_PLATFORM/lib` 






