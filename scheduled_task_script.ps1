$action = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument "C:\scripts\dataLog.ps1"
$trigger = New-ScheduledTaskTrigger -Once -At '1:25' -RepetitionInterval 1min -RepetitionDuration 15min
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "Daniel" -Description "Shane was here"