# $Password = Read-Host -AsSecureString "Insert account's password"
# $Name = Read-Host "Insert account's name"
# $Desc = Read-Host "Insert account's description"

$Password = "Concorso2024!!!" | ConvertTo-SecureString -AsPlainText -Force
$Name = "concorso"
$Desc = "account concorso 2024"
$params = @{
    Name        = $Name
    Password    = $Password
    FullName    = $Name
    Description = $Desc
}
New-LocalUser @params