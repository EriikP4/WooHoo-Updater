chcp 65001>NUL
mode con:cols=40 lines=10
title WooHoo Fixer
@echo off
echo Para más información, visita la página de GitHub
echo Pulsa ENTER para continuar...
pause >NUL
echo Añadiendo regla de Firewall para Hamachi...
netsh advfirewall firewall add rule name="HAMACHI FIX" dir=out program="C:\Program Files (x86)\LogMeIn Hamachi\hamachi-2-ui.exe" profile=any action=allow
netsh advfirewall firewall add rule name="HAMACHI FIX" dir=in program="C:\Program Files (x86)\LogMeIn Hamachi\hamachi-2-ui.exe" profile=any action=allow
netsh advfirewall firewall add rule name="HAMACHI FIX" dir=out program="C:\Program Files (x86)\LogMeIn Hamachi\LMIGuardianSvc.exe" profile=any action=allow
netsh advfirewall firewall add rule name="HAMACHI FIX" dir=in program="C:\Program Files (x86)\LogMeIn Hamachi\LMIGuardianSvc.exe" profile=any action=allow
netsh advfirewall firewall add rule name="HAMACHI FIX" dir=out program="C:\Program Files (x86)\LogMeIn Hamachi\x64\hamachi-2.exe" profile=any action=allow
netsh advfirewall firewall add rule name="HAMACHI FIX" dir=in program="C:\Program Files (x86)\LogMeIn Hamachi\x64\hamachi-2.exe" profile=any action=allow
netsh advfirewall firewall add rule name="HAMACHI FIX" dir=out program="C:\Program Files (x86)\LogMeIn Hamachi\x64\LMIGuardianSvc.exe" profile=any action=allow
netsh advfirewall firewall add rule name="HAMACHI FIX" dir=in program="C:\Program Files (x86)\LogMeIn Hamachi\x64\LMIGuardianSvc.exe" profile=any action=allow
echo Añadiendo excepción en Windows Defender
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionPath '%USERPROFILE%\Documents\Electronic Arts'"