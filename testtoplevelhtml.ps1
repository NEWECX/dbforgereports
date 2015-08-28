# this is really stupid, only because it seems impossibly hard to pass parameters with spaces inside of a powershell script
cmd.exe "/c" "C:\Program Files\Devart\Reports\testtoplevelhtml.bat"

$smtpServer = "10.22.22.41"
#$smtpServer = "smtp.sendgrid.net"
$smtpFrom = "ritanisupport@ritani.com"
#$smtpTo = "simont@ritani.com,adams@ritani.com"
#$smtpTo = "simont@ritani.com"
$smtpTo = "toplevelfinancials@ritani.com"
$messageSubject = "Ritani Top Level Financials"

$message = New-Object System.Net.Mail.MailMessage $smtpfrom, $smtpto
$message.Subject = $messageSubject
$message.IsBodyHTML = $true

$message.Body = Get-Content "c:\tmp\RitaniTopLevelFinancials*.html"

$smtp = New-Object Net.Mail.SmtpClient($smtpServer)
#$smtp = New-Object Net.Mail.SmtpClient($smtpServer,587)
#$smtp.EnableSsl = $true
#$smtp.Credentials = New-Object System.Net.NetworkCredential("ecx", "ecx20301st");
$smtp.Send($message)

Remove-Item -Recurse "c:\tmp\RitaniTopLevelFinancials*"