Set-MpPreference -DisableRealtimeMonitoring $true
$AdminKey = "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}"
$UserKey = "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}"
Set-ItemProperty -Path $AdminKey -Name "IsInstalled" -Value 0
Set-ItemProperty -Path $UserKey -Name "IsInstalled" -Value 0
cd\
cd C:\Users\aiwadmin\Desktop
Invoke-WebRequest -Uri https://raw.githubusercontent.com/trendmicro/Azure-Immersion-Day/main/scripts/randomwear/randompackage.exe -OutFile .\randompackage.exe -UseBasicParsing