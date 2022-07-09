$TaskName = "Daniel";
$Task = Get-ScheduledTask | Where-Object { $_.TaskName -eq $TaskName } | Select-Object -First 1
if($null -ne $task) {
    $Task | Unregister-ScheduledTask -Confirm.$false
    Write-Host "Task $TaskName waas removed." -ForegroundColor Yellow
}