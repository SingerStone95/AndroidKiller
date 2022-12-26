@echo off
java -jar "%~dp0\apksigner.jar" sign --v3-signing-enabled false --ks "%~dp0\singerstone.jks"  --ks-key-alias singerstone --ks-pass pass:cbh123456 --key-pass pass:cbh123456  --out %2  %1