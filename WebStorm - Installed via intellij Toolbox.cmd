@echo off

:: change the path below to match your installed version
SET WebStormPath=%USERPROFILE%\AppData\Local\JetBrains\Toolbox\apps\WebStorm\ch-0\201.6668.106\bin\webstorm64.exe
 
echo Adding file entries
@reg add "HKEY_CLASSES_ROOT\*\shell\WebStorm" /t REG_SZ /v "" /d "Open with WebStorm"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\WebStorm" /t REG_EXPAND_SZ /v "Icon" /d "%WebStormPath%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\WebStorm\command" /t REG_SZ /v "" /d "%WebStormPath% \"%%1\"" /f
 
echo Adding within a folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\WebStorm" /t REG_SZ /v "" /d "Open with WebStorm"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\WebStorm" /t REG_EXPAND_SZ /v "Icon" /d "%WebStormPath%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\WebStorm\command" /t REG_SZ /v "" /d "%WebStormPath% \"%%V\"" /f

echo Adding folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\shell\WebStorm" /t REG_SZ /v "" /d "Open with WebStorm"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\WebStorm" /t REG_EXPAND_SZ /v "Icon" /d "%WebStormPath%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\WebStorm\command" /t REG_SZ /v "" /d "%WebStormPath% \"%%1\"" /f

pause