try{
    Import-Module ActiveDirectory
}
catch{
    $_.Exception.Message
}

$pwNeverExpires = $true            #Change to False if password expiration is required
$domainName = "LAB.local"          #Change as required

$firstNames = @()
$firstNames += Get-Content -Path .\firstnames.txt

$lastNames = @()
$lastNames += Get-Content -Path .\lastnames.txt

#Random Passowrd Generator
function GenerateRandomPW{
    $lowercase = ('abcdefghiklmnoprstuvwxyz').ToCharArray()
    $uppercase = ('ABCDEFGHKLMNOPRSTUVWXYZ').ToCharArray()
    $numbers = ('1234567890').ToCharArray()
    $special = ('!"§$%&/()=?}][{@#*+').ToCharArray()

    #Change count values as needed to match password policy rules
    $password = $lowercase | Get-Random -Count 5
    $password += $uppercase | Get-Random -Count 1
    $password += $numbers | Get-Random -Count 1
    $password += $special | Get-Random -Count 1
    $password = ($password | Sort-Object {Get-Random}) -join ""

    $securePw = ConvertTo-SecureString -String $password -AsPlainText -Force

    return $securePw
}

$userCount = Read-Host "Insert amount of users to create: "

for ($i = 0; $i -lt $userCount; $i++) {
    $firstName = $firstNames | Get-Random
    $lastName = $lastNames | Get-Random
    $email = ("$firstName.$lastName@$domainName").ToLower()
    $password = GenerateRandomPW

    if($lastName.Length -ge 5){
        $samAccountName = ($firstName.Substring(0,1) + $lastName.Substring(0,5)).ToLower()
    }
    else {
        $samAccountName = ($firstName.Substring(0,1) + $lastName).ToLower()
    }

    try{
        New-ADUser -Name "$firstName $lastName" -GivenName $firstName -Surname $lastName -SamAccountName $samAccountName -DisplayName "$firstName $lastName" -Email $email -AccountPassword $password -PasswordNeverExpires $pwNeverExpires -Enabled $true
    }
    catch{
        $_.Exception.Message
    }
}