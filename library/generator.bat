@echo on
title Script to automate WrapC development process.


wrap_c --verbose --c_compile_options=/I%cd%/C/include  --script_pre_process=pre_script.bat --script_post_process=post_script.bat --output-dir=%cd%/generated_wrapper  --full-header=%cd%/C/include/librsvg/rsvg.h  --config=%cd%/config.xml



