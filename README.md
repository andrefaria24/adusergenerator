### Description
----------------------------------------------------------------------------------------------------------------------------
This script will generate random Active Directory users for testing purposes.

### Notes
----------------------------------------------------------------------------------------------------------------------------
* The ActiveDirectory module is required in order to execute the script.
* The user executing the script will require AD User creation permissions.
* Users will be created with Password Expiration flag set to False. Change the $pwNeverExpires value to True if password expiration is required.
* Naming convention for SamAccountName is first letter of first name + first 5 letters of last name (ex: user John Doehert's account name will be jdoehe)
* Naming convention for email is firstname.lastname@domain