#!/bin/sh
#Script to automate WrapC development process.



wrap_c --verbose  --c_compile_options="-I/usr/include/glib-2.0/ -I/usr/lib/x86_64-linux-gnu/glib-2.0/include/ -I/usr/include/gdk-pixbuf-2.0/ -I/usr/include/cairo/"  --script_pre_process=pre_script.sh --script_post_process=post_script.sh  --output-dir=./generated_wrapper --full-header=/usr/local/include/librsvg-2.0/librsvg/rsvg.h --config=config.xml

