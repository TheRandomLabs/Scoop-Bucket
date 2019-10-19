$dir = "$psscriptroot\..\bucket"

$office = "$dir\office-365-proplus.json"
(Get-Content "$office").Replace(': "office"', ': "0"') | Set-Content -Path "$office"

$office = "$dir\office-365-proplus-minimal.json"
(Get-Content "$office").Replace(': "office"', ': "0"') | Set-Content -Path "$office"
