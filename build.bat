call .\build\BatchSubstitute.bat "@VERSION" "1.3.0" .\lib\bootstrap.less > .\lib\bootstrap.tmp.less
call .\build\BatchSubstitute.bat "@DATE" "%date% %time%" .\lib\bootstrap.tmp.less > .\lib\bootstrap.tmp.1.less
cd lib
@cscript //nologo "../build/lessc.wsf" bootstrap.tmp.1.less ../bootstrap.css
@cscript //nologo "../build/lessc.wsf" bootstrap.tmp.1.less ../bootstrap.min.css -compress
del /f bootstrap.tmp.less
del /f bootstrap.tmp.1.less
cd ..