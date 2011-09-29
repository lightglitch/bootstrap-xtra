cd lib
@cscript //nologo "../build/lessc.wsf" bootstrap.less ../bootstrap.css
@cscript //nologo "../build/lessc.wsf" bootstrap.less ../bootstrap.min.css -compress
cd ../