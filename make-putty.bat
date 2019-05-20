@SET PROJNAME=putty-gdi
@SET REVISION=20150228

@SET CANDLE="%WIX%bin\candle.exe"
@SET LIGHT="%WIX%bin\light.exe"

%CANDLE% "%PROJNAME%.wxs"      -out "%PROJNAME%32.wixobj"             -fips           -arch x86 -ext WixUIExtension -ext WixUtilExtension
%CANDLE% "%PROJNAME%.wxs"      -out "%PROJNAME%64.wixobj"             -fips           -arch x64 -ext WixUIExtension -ext WixUtilExtension
%LIGHT%  "%PROJNAME%32.wixobj" -out "%PROJNAME%-%REVISION%-32bit.msi" -cultures:ja-jp           -ext WixUIExtension -ext WixUtilExtension
%LIGHT%  "%PROJNAME%64.wixobj" -out "%PROJNAME%-%REVISION%-64bit.msi" -cultures:ja-jp           -ext WixUIExtension -ext WixUtilExtension

