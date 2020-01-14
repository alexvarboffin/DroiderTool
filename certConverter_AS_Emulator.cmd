rem https://slproweb.com/products/Win32OpenSSL.html


rem При установке сертификата через Android Certificate Installer
rem Прокси на устройстве должен быть отключен


rem 192.168.232.1

@echo off


setlocal
cd /d %~dp0

set FOO=adb

set PATH=%PATH%;C:\Program Files\GnuWin32\bin

rm cacert.der
rm burp.pem

"C:\Program Files (x86)\GnuWin32\bin\wget.exe" http://127.0.0.1:8080/cert -O cacert.der
D:\bin\openssl x509 -inform der -in cacert.der -out burp.pem


adb kill-server
"%FOO%" kill-server
"%FOO%" root

"%FOO%" devices


"%FOO%" -s emulator-5554 push burp.pem /sdcard/my_certificates/burp.pem

"%FOO%" -s emulator-5554 shell "mount -o remount /system"

"%FOO%" -s emulator-5554 push hosts /system/etc

"%FOO%" -s emulator-5554 shell "ls -l /system/app/*"
"%FOO%" -s emulator-5554 shell "rm /system/app/launcher*.apk"


"%FOO%" -s emulator-5554 install -r "Apex Launcher Customize Secure and Efficient_v4.5.1_apkpure.com.apk"
"%FOO%" -s emulator-5554 install -r "Certificate Installer_v1.1.1_apkpure.com.apk"


rem "%FOO%" -s emulator-5554 install -r "Nova Launcher_v5.5.4_apkpure.com.apk"



rem "%FOO%" -s emulator-5554 shell "ls /sdcard/my_certificates/ && 'am start -a android.intent.action.VIEW -d file:///sdcard/my_certificates/'"


rem "%FOO%" -s emulator-5554 shell "ls /sdcard/my_certificates/ && 'am start -n it.nicola_amatucci.android.certificate_installer/.CertificateInstallerActivity'"

pause