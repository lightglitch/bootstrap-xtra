call .\build\BatchSubstitute.bat "@VERSION" "1.3.0" .\lib\bootstrap_xtra.less > .\lib\bootstrap_xtra.tmp.less
call .\build\BatchSubstitute.bat "@DATE" "%date% %time%" .\lib\bootstrap_xtra.tmp.less > .\lib\bootstrap_xtra.tmp.1.less
cd lib
@cscript //nologo "../build/lessc.wsf" bootstrap_xtra.tmp.1.less ../bootstrap.css
@cscript //nologo "../build/lessc.wsf" bootstrap_xtra.tmp.1.less ../bootstrap.min.css -compress
del /f bootstrap_xtra.tmp.less
del /f bootstrap_xtra.tmp.1.less
cd ..