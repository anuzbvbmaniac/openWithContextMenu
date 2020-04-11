@echo off

:: Add your phpstorm path. Below is the path used by Toolbox
SET AndroidStudioPath=%USERPROFILE%\AppData\Local\JetBrains\Toolbox\apps\AndroidStudio\ch-0\192.6308749\bin\studio64.exe
 
echo Adding file entries
@reg add "HKEY_CLASSES_ROOT\*\shell\AndroidStudio" /t REG_SZ /v "" /d "Open in Android Studio"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\AndroidStudio" /t REG_EXPAND_SZ /v "Icon" /d "%AndroidStudioPath%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\AndroidStudio\command" /t REG_SZ /v "" /d "%AndroidStudioPath% \"%%1\"" /f
 
echo Adding within a folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\AndroidStudio" /t REG_SZ /v "" /d "Open with Android Studio"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\AndroidStudio" /t REG_EXPAND_SZ /v "Icon" /d "%AndroidStudioPath%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\AndroidStudio\command" /t REG_SZ /v "" /d "%AndroidStudioPath% \"%%V\"" /f

echo Adding folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\shell\AndroidStudio" /t REG_SZ /v "" /d "Open with Android Studio"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\AndroidStudio" /t REG_EXPAND_SZ /v "Icon" /d "%AndroidStudioPath%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\AndroidStudio\command" /t REG_SZ /v "" /d "%AndroidStudioPath% \"%%1\"" /f

pause