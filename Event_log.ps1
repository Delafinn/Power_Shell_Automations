# Script to get recent events from Windows Event Logs

$logs = Get-EventLog -LogName Application, System -Newest 50

Write-Host "Recent Events:"
$logs | Format-Table -Property TimeGenerated, Source, EventID, Message -AutoSize
