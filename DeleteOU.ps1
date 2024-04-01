#Gathering Data to delete the OU
$OUName = Read-Host "Enter the OU name"

#Validate if OU exists. If it does then it will be deleted. If not it will return an error
if (Get-ADOrganizationalUnit -Identity "OU=$OUName, DC=VinoLab, DC=com"){
Remove-ADOrganizationalUnit -Identity "OU=$OUName, DC=VinoLab, DC=com" -Confirm
Write-Host "Success. '$OUName' has been deleted." -ForegroundColor Green
}

#Keep the window open
Write-Host "Exit the Script"
pause
