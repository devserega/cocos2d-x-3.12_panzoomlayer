@echo off
REM ************************ version 2.4 ************************************

rem cd "%1"
rem del /test/*.* /y
del /s /q cocos2d\cocos\2d\Debug.win32\*.*
rem for /d %%i in (*) do rmdir /s /q "%%i" 
del /s /q cocos2d\external\bullet\proj.win32\Debug.win32\*.*
del /s /q cocos2d\external\recast\proj.win32\Debug.win32\*.*
del /s /q cocos2d\cocos\editor-support\spine\proj.win32\Debug.win32\*.*

REM ========================= WIN32 CLEAN UP ===============================
REM del /s /q proj.win32\Debug.win32\*.pdb
REM del /s /q proj.win32\Debug.win32\*.ilk
del /s /q proj.win32\*.sdf

REM This will delete everything from the folder (and the folder itself).
IF EXIST "proj.win32\Debug.win32" (
	rmdir "proj.win32\Debug.win32" /s /q
)

REM ========================= ANDROID CLEAN UP ==============================
REM This will delete only files without folders
rem del /s /q proj.android-studio\app\obj\*.*

REM This will delete everything from the folder (and the folder itself).
IF EXIST "proj.android-studio\app\obj" (
	rmdir "proj.android-studio\app\obj" /s /q
)

IF EXIST "proj.android-studio\app\build" (
	rmdir "proj.android-studio\app\build" /s /q
)

REM ===================== ANDROID VISUAL GDB CLEAN UP =======================
del /s /q proj.android-vgdb\*.sdf
del /s /q proj.android-vgdb\VisualGDBTest\obj\*.*
del /s /q proj.android-vgdb\Release.win32\*.*
del /s /q proj.android-vgdb\Debug.win32\*.*

REM ================ ANDROID NVIDIA NSIGHT TEGRA CLEAN UP ===================
del /s /q proj.android-nsight-tegra\*.sdf
del /s /q proj.android-nsight-tegra\Tegra-Android\*.apk
IF EXIST "proj.android-nsight-tegra\AndroidNsightTegra\Tegra-Android" (
	rmdir "proj.android-nsight-tegra\AndroidNsightTegra\Tegra-Android" /s /q
)

pause