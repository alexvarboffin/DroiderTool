﻿rem https://slproweb.com/products/Win32OpenSSL.html


rem При установке сертификата через Android Certificate Installer
rem Прокси на устройстве должен быть отключен

@echo off


setlocal
cd /d %~dp0

set FOO=D:\Program Files\Nox\bin\nox_adb.exe

set PATH=%PATH%;C:\Program Files\GnuWin32\bin

rm cacert.der
rm burp.pem

wget http://127.0.0.1:8080/cert -O cacert.der
D:\bin\openssl x509 -inform der -in cacert.der -out burp.pem


adb kill-server
"%FOO%" kill-server


rem adb connect 127.0.0.1:62001
rem adb connect 127.0.0.1:61001

"%FOO%" connect 127.0.0.1:62001
"%FOO%" devices


"%FOO%" -s 127.0.0.1:62001 push burp.pem /sdcard/my_certificates/burp.pem

"%FOO%" -s 127.0.0.1:62001 shell "mount -o remount /system"

"%FOO%" -s 127.0.0.1:62001 push hosts /system/etc

"%FOO%" -s 127.0.0.1:62001 shell "ls -l /system/app/*"
"%FOO%" -s 127.0.0.1:62001 shell "rm /system/app/launcher*.apk"


"%FOO%" -s 127.0.0.1:62001 install -r "Apex Launcher Customize Secure and Efficient_v4.5.1_apkpure.com.apk"
"%FOO%" -s 127.0.0.1:62001 install -r "Certificate Installer_v1.1.1_apkpure.com.apk"
"%FOO%" -s 127.0.0.1:62001 install -r "Fake GPS location_v2.0.6.apk"

rem "%FOO%" -s 127.0.0.1:62001 install -r "Nova Launcher_v5.5.4_apkpure.com.apk"



rem "%FOO%" -s 127.0.0.1:62001 shell "ls /sdcard/my_certificates/ && 'am start -a android.intent.action.VIEW -d file:///sdcard/my_certificates/'"


rem "%FOO%" -s 127.0.0.1:62001 shell "ls /sdcard/my_certificates/ && 'am start -n it.nicola_amatucci.android.certificate_installer/.CertificateInstallerActivity'"

pause