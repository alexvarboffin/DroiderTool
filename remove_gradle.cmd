@echo off
color 0a

rem Tag mismatch error-Android studio
rem Fix ERROR: Tag mismatch!


mkdir C:\Users\%username%\.gradle\wrapper\dists
cd /d C:\Users\%username%\.gradle\wrapper\dists

dir

taskkill.exe /F /IM studio.exe
taskkill.exe /F /IM java.exe

echo ==============================================
echo =========== REMOVE_ALL_DATA =========== 
echo ==============================================

rmdir /s /q gradle-*-all
rmdir /s /q gradle-*-bin

rmdir /s /q gradle-2.2.1-all
rmdir /s /q gradle-4.4
rmdir /s /q gradle-4.10.2-all
rmdir /s /q gradle-5.1.1-bin
rmdir /s /q gradle-2.5-all
rmdir /s /q gradle-4.4-all
rmdir /s /q gradle-3.3-all
rmdir /s /q gradle-4.9-all
rmdir /s /q gradle-2.14.1-bin
rmdir /s /q gradle-4.10.1-all
rmdir /s /q gradle-2.14.1-all
rmdir /s /q gradle-4.4.1-all
rmdir /s /q gradle-4.09-all
rmdir /s /q gradle-2.2-all
rmdir /s /q gradle-4.1-all
rmdir /s /q gradle-2.10.3-all
rmdir /s /q gradle-4.6-all
rmdir /s /q gradle-2.10.2-all
rmdir /s /q gradle-4.9-rc-1-all
rmdir /s /q gradle-4.10-bin
rmdir /s /q gradle-4.10.3-bin
rmdir /s /q gradle-4-4-all
rmdir /s /q gradle-5.1.1-all
rmdir /s /q gradle-2.8-all
rmdir /s /q gradle-2.2.1-bin
rmdir /s /q gradle-4.4.1-bin
rmdir /s /q gradle-2.10.1-all
rmdir /s /q gradle-4.6-bin
rmdir /s /q gradle-2.4-all
rmdir /s /q gradle-4.8-all
rmdir /s /q gradle-4.9-bin
rmdir /s /q gradle-4.10-all
rmdir /s /q gradle-2.10-all
rmdir /s /q gradle-4.10.3-all
rmdir /s /q 2.14.1-all

del /f /s /q C:\Users\%username%\.gradle\caches 1>nul
rmdir /s /q C:\Users\%username%\.gradle\caches
dir C:\Users\%username%\.gradle\caches

del /f /s /q C:\Users\%username%\AppData\Local\Temp

echo ==============================================
echo =========== USE_ONLY_5.2.1 version ===========
echo ============================================== 
echo blahblah>> gradle-2.2.1-all
echo blahblah>> gradle-4.4
echo blahblah>> gradle-4.10.2-all
echo blahblah>> gradle-5.1.1-bin
echo blahblah>> gradle-2.5-all
echo blahblah>> gradle-4.4-all
echo blahblah>> gradle-3.3-all
echo blahblah>> gradle-4.9-all
echo blahblah>> gradle-2.14.1-bin
echo blahblah>> gradle-4.10.1-all
echo blahblah>> gradle-2.14.1-all
echo blahblah>> gradle-4.4.1-all
echo blahblah>> gradle-4.09-all
echo blahblah>> gradle-2.2-all
echo blahblah>> gradle-4.1-all
echo blahblah>> gradle-2.10.3-all
echo blahblah>> gradle-4.6-all
echo blahblah>> gradle-2.10.2-all
echo blahblah>> gradle-4.9-rc-1-all
echo blahblah>> gradle-4.10-bin
echo blahblah>> gradle-4.10.3-bin
echo blahblah>> gradle-4-4-all
echo blahblah>> gradle-5.1.1-all
echo blahblah>> gradle-2.8-all
echo blahblah>> gradle-2.2.1-bin
echo blahblah>> gradle-4.4.1-bin
echo blahblah>> gradle-2.10.1-all
echo blahblah>> gradle-4.6-bin
echo blahblah>> gradle-2.4-all
echo blahblah>> gradle-4.8-all
echo blahblah>> gradle-4.9-bin
echo blahblah>> gradle-4.10-all
echo blahblah>> gradle-2.10-all
echo blahblah>> gradle-4.10.3-all
echo blahblah>> 2.14.1-all

start .

pause

rem And now, in Android Studio:
rem File->Settings->Build, ...->Gradle->Use Local Gradle...
rem D:\android\gradle-5.1.1
