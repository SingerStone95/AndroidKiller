@echo off
REM java -jar "%~dp0\apksigner.jar" "%~dp0\testkey.x509.pem" "%~dp0\testkey.pk8" %1 %2

echo %1
echo %2
echo "zipalign start>>>>>>"
zipalign -p -f -v 4 %1 zipalign_unsigned.apk
zipalign -c -v 4  zipalign_unsigned.apk
echo "zipalign end<<<<<<"
REM 如果不需要对齐操作 直接把下面指令的 zipalign_unsigned.apk 替换成 %1 即可
java -jar "%~dp0\apksigner.jar" sign --v3-signing-enabled false --ks "%~dp0\singerstone.jks"  --ks-key-alias singerstone --ks-pass pass:cbh123456 --key-pass pass:cbh123456  --out %2 zipalign_unsigned.apk
del zipalign_unsigned.apk