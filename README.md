# New-RandomADUser
[![PSGallery Version](https://img.shields.io/powershellgallery/v/New-RandomADUser.svg?style=flat&logo=powershell&label=PSGallery%20Version)](https://www.powershellgallery.com/packages/New-RandomADUser) [![PSGallery Downloads](https://img.shields.io/powershellgallery/dt/New-RandomADUser.svg?style=flat&logo=powershell&label=PSGallery%20Downloads)](https://www.powershellgallery.com/packages/New-RandomADUser) [![PowerShell](https://img.shields.io/badge/PowerShell-5.1-blue?style=flat&logo=powershell)](https://www.powershellgallery.com/packages/New-RandomADUser) [![PSGallery Platform](https://img.shields.io/powershellgallery/p/New-RandomADUser.svg?style=flat&logo=powershell&label=PSGallery%20Platform)](https://www.powershellgallery.com/packages/New-RandomADUser)

## Table of Contents
- [New-RandomADUser](#New-RandomADUser)
- [Description](#Description)
- [Features](#Features)
- [Requirements](#Requirements)
- [Install module from PowerShell Gallery](#Install-module-from-PowerShell-Gallery)
- [Usage and Examples](#Usage-and-Examples)
  - [Create a random User account in the lab.local domain in the Test OU](#Create-a-random-User-account-in-the-lab.local-domain-in-the-Test-OU)
  - [Create 100 random User accounts in the lab.local domain with a prefix of tst](#Create-100-random-User-accounts-in-the-lab.local-domain-with-a-prefix-of-tst)

# Description

This PowerShell module generates random Active Directory users. It is primarily intended for testing purposes such as:

* Populating Active Directory with test users for performance and security testing.
* Creating realistic user accounts for security simulations.
* Generating sample data for development and training environments.

# Features

* Generates users with random names, passwords, and other attributes.
* Ability to specify desired target Organizational Unit (OU).
* Control over password complexity and other attributes.

# Requirements

* **PowerShell v5.1 or later:** The module leverages PowerShell's Active Directory cmdlets.
* **Active Directory Module:** Ensure the Active Directory module is installed (`Import-Module ActiveDirectory`).
* **Permissions:** The user executing the script must have appropriate permissions in Active Directory to create user accounts.

# Install module from PowerShell Gallery
```powershell
Install-Module -Name New-RandomADUser
```

# Usage and Examples

### Create a random User account in the lab.local domain in the Test OU
```powershell
New-RandomADUser -Domain lab.local -OU "OU=Test,DC=lab,DC=local"
```

### Create 100 random User accounts in the lab.local domain with a prefix of tst
```powershell
New-RandomADUser -Domain lab.local -OU "OU=Test,DC=lab,DC=local" -Count 100 -Prefix "tst-"
```