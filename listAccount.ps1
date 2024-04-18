$choise = Read-Host "do you want list all account filter it?`n1. all account | 2. filter it"
switch ($choise) {
    1 {  Get-LocalUser }
    2 {
        $choise = Read-Host "do you want filter by name or SID?`n 1. name | 2. SID"
        switch ($choise) {
            1 { 
                $Name = Read-Host "insert name" 
                Get-LocalUser -Name  $Name
            }
            2 {
                $Sid = Read-Host "insert SID"
                Get-LocalUser -SID  $Sid
            }
            Default {Write-Output "unhandled input"}
        }
    }

    Default {Write-Output "unhandled input"}
}