@{
    RootModule = 'New-RandomADUser.psm1'
    ModuleVersion = '1.0'
    GUID = '532d9fab-bb7a-4471-9b29-c3c4dc7f46bd'
    Author = 'Andre Faria'
    Copyright         = '(c) Andre Faria. All rights reserved.'
    Description = 'A PowerShell module that generates random Active Directory users.'
    PowerShellVersion = '7.4.6'
    FunctionsToExport = 'New-RandomADUser'
    CmdletsToExport = @()
    VariablesToExport = '*'
    AliasesToExport = @()

    PrivateData       = @{
        PSData = @{
            Tags         = @('Windows', 'ActiveDirectory', 'AD', 'User', 'Generator')
            LicenseUri   = 'https://github.com/andrefaria24/adusergenerator/main/LICENSE'
            ProjectUri   = 'https://github.com/andrefaria24/adusergenerator'
            ReleaseNotes = 'https://github.com/andrefaria24/adusergenerator/main/CHANGELOG.md'
        }
    }
}